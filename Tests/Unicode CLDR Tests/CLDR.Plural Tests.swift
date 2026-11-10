import Testing
import Unicode_CLDR

enum `CLDR.Plural Tests` {}

extension `CLDR.Plural Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `CLDR.Plural Tests`.Test.Unit {

    @Test(arguments: [CLDR.Plural.Kind.cardinal, .ordinal])
    func `every sample in CLDR selects its category`(kind: CLDR.Plural.Kind) throws {
        let block = kind == .cardinal ? `CLDR.Plural.Samples`.cardinal : `CLDR.Plural.Samples`.ordinal
        var count = 0
        for line in block.split(separator: "\n") {
            let fields = line.split(separator: " ")
            let tag = try BCP47.LanguageTag(fields[0])
            for value in fields.dropFirst(2) {
                let category = CLDR.plural(try CLDR.Plural.Operands(value), kind, in: tag)
                #expect(category.rawValue == fields[1], "\(fields[0]) \(value)")
                count += 1
            }
        }
        #expect(count == (kind == .cardinal ? 12_499 : 2_732))
    }

    @Test
    func `every generated rule is the parse of its source`() throws {
        for identifier in CLDR.identifiers {
            let tag = try BCP47.LanguageTag(identifier)
            for kind in CLDR.Plural.Kind.allCases {
                for rule in CLDR.pluralRules(kind, in: tag).rules {
                    #expect(try CLDR.Plural.Rule(rule.category, parsing: rule.source) == rule)
                }
            }
        }
    }

    @Test
    func `cardinals and ordinals differ`() throws {
        #expect(CLDR.plural(1, in: .en) == .one)
        #expect(CLDR.plural(2, in: .en) == .other)
        #expect(CLDR.plural(1, .ordinal, in: .en) == .one)
        #expect(CLDR.plural(2, .ordinal, in: .en) == .two)
        #expect(CLDR.plural(3, .ordinal, in: .en) == .few)
        #expect(CLDR.plural(11, .ordinal, in: .en) == .other)
        #expect(CLDR.plural(21, in: .ru) == .one)
        #expect(CLDR.plural(22, in: .ru) == .few)
        #expect(CLDR.plural(25, in: .ru) == .many)
        #expect(CLDR.pluralRules(in: .ar).categories == [.zero, .one, .two, .few, .many, .other])
    }

    @Test
    func `visible fraction digits count`() throws {
        #expect(CLDR.plural(try CLDR.Number.Decimal("1"), in: .en) == .one)
        #expect(CLDR.plural(try CLDR.Number.Decimal("1.0"), in: .en) == .other)
        #expect(CLDR.plural(try CLDR.Number.Decimal("1.5"), in: .fr) == .one)
        #expect(CLDR.plural(try CLDR.Number.Decimal("2.0"), in: .fr) == .other)
    }

    @Test
    func `operands follow the definitions of TR35`() throws {
        let operands = try CLDR.Plural.Operands("-1.230")
        #expect(operands.value(.n) == 1)
        #expect(operands.value(.i) == 1)
        #expect(operands.value(.v) == 3)
        #expect(operands.value(.w) == 2)
        #expect(operands.value(.f) == 230)
        #expect(operands.value(.t) == 23)
        #expect(operands.value(.c) == 0)
        let compact = try CLDR.Plural.Operands("1.2c3")
        #expect(compact.value(.i) == 1200)
        #expect(compact.value(.v) == 0)
        #expect(compact.value(.e) == 3)
    }
}

extension `CLDR.Plural Tests`.Test.`Edge Case` {

    @Test
    func `rules outside the equality syntax are refused`() {
        #expect(throws: CLDR.Plural.Rule.Error.expectedComparison("is")) {
            try CLDR.Plural.Rule(.one, parsing: "n is 1")
        }
        #expect(throws: CLDR.Plural.Rule.Error.expectedOperand("x")) {
            try CLDR.Plural.Rule(.one, parsing: "x = 1")
        }
        #expect(throws: CLDR.Plural.Rule.Error.invalidRange("5..2")) {
            try CLDR.Plural.Rule(.one, parsing: "n = 5..2")
        }
        #expect(throws: CLDR.Plural.Rule.Error.unexpectedEnd) {
            try CLDR.Plural.Rule(.one, parsing: "n = 1 and")
        }
    }

    @Test
    func `doubles are read in their shortest form`() throws {
        #expect(CLDR.plural(try #require(CLDR.Number.Decimal(1.0)), in: .en) == .one)
        #expect(CLDR.plural(try #require(CLDR.Number.Decimal(1.5)), in: .en) == .other)
    }

    @Test
    func `integers beyond seventeen digits keep their low digits`() {
        #expect(CLDR.plural(UInt64(1_000_000_000_000_000_001), in: .en) == .other)
        #expect(CLDR.plural(UInt64(1_000_000_000_000_000_000), in: .fr) == .many)
    }
}
