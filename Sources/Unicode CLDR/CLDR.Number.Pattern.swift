public import Cardinal

extension CLDR.Number {

    public struct Pattern: Sendable, Hashable {

        public let text: String

        public let positive: Affixes

        public let negative: Affixes?

        public let minimumIntegerDigits: Cardinal

        public let minimumFractionDigits: Cardinal

        public let maximumFractionDigits: Cardinal

        public let grouping: Grouping?

        init(
            text: String,
            positive: Affixes,
            negative: Affixes?,
            minimumIntegerDigits: Cardinal,
            minimumFractionDigits: Cardinal,
            maximumFractionDigits: Cardinal,
            grouping: Grouping?
        ) {
            self.text = text
            self.positive = positive
            self.negative = negative
            self.minimumIntegerDigits = minimumIntegerDigits
            self.minimumFractionDigits = minimumFractionDigits
            self.maximumFractionDigits = maximumFractionDigits
            self.grouping = grouping
        }
    }
}

extension CLDR.Number.Pattern {

    public init(_ text: some StringProtocol) throws(Error) {
        let characters = Array(text)
        var index = 0
        let positive = try Self.subpattern(characters, &index)
        var negative: (affixes: Affixes, number: Body)?
        if index < characters.count {
            index += 1
            negative = try Self.subpattern(characters, &index)
            if index < characters.count {
                throw .unexpected(characters[index])
            }
        }
        let number = positive.number
        self.init(
            text: String(text),
            positive: positive.affixes,
            negative: negative?.affixes,
            minimumIntegerDigits: number.minimumIntegerDigits,
            minimumFractionDigits: number.minimumFractionDigits,
            maximumFractionDigits: number.maximumFractionDigits,
            grouping: number.grouping
        )
    }

    typealias Body = (
        minimumIntegerDigits: Cardinal,
        minimumFractionDigits: Cardinal,
        maximumFractionDigits: Cardinal,
        grouping: Grouping?
    )

    static func subpattern(
        _ characters: [Character],
        _ index: inout Int
    ) throws(Error) -> (affixes: Affixes, number: Body) {
        let prefix = try affix(characters, &index)
        let number = try body(characters, &index)
        let suffix = try affix(characters, &index)
        if index < characters.count, characters[index] != ";" {
            throw .unexpected(characters[index])
        }
        return (Affixes(prefix: prefix, suffix: suffix), number)
    }

    static func affix(_ characters: [Character], _ index: inout Int) throws(Error) -> [Affix] {
        var pieces: [Affix] = []
        var literal = ""
        func flush() {
            if !literal.isEmpty {
                pieces.append(.text(literal))
                literal = ""
            }
        }
        while index < characters.count {
            let character = characters[index]
            switch character {
            case "#", "0", ",", ".", ";":
                flush()
                return pieces

            case "'":
                if index + 1 < characters.count, characters[index + 1] == "'" {
                    literal.append("'")
                    index += 2
                    continue
                }
                index += 1
                var closed = false
                while index < characters.count {
                    if characters[index] == "'" {
                        if index + 1 < characters.count, characters[index + 1] == "'" {
                            literal.append("'")
                            index += 2
                            continue
                        }
                        index += 1
                        closed = true
                        break
                    }
                    literal.append(characters[index])
                    index += 1
                }
                guard closed else {
                    throw .unterminatedQuote
                }

            case "-":
                flush()
                pieces.append(.minusSign)
                index += 1

            case "+":
                flush()
                pieces.append(.plusSign)
                index += 1

            case "%", "‰", "¤", "*", "@", "E", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                throw .unsupported(character)

            default:
                literal.append(character)
                index += 1
            }
        }
        flush()
        return pieces
    }

    static func body(_ characters: [Character], _ index: inout Int) throws(Error) -> Body {
        var integer: [Character] = []
        while index < characters.count, "#0,".contains(characters[index]) {
            integer.append(characters[index])
            index += 1
        }
        var fraction: [Character] = []
        if index < characters.count, characters[index] == "." {
            index += 1
            while index < characters.count, "#0".contains(characters[index]) {
                fraction.append(characters[index])
                index += 1
            }
        }
        let digits = integer.filter { $0 != "," }
        guard digits.contains("0") || digits.contains("#") || !fraction.isEmpty else {
            throw .missingDigits
        }
        if let zero = digits.firstIndex(of: "0"), digits[zero...].contains("#") {
            throw .misplacedDigit
        }
        if let hash = fraction.firstIndex(of: "#"), fraction[hash...].contains("0") {
            throw .misplacedDigit
        }
        let groups = integer.split(separator: ",", omittingEmptySubsequences: false)
        var grouping: Grouping?
        if groups.count > 1 {
            guard let primary = groups.last, !primary.isEmpty else {
                throw .misplacedGrouping
            }
            let secondary = groups.count > 2 ? groups[groups.count - 2].count : primary.count
            guard secondary > 0 else {
                throw .misplacedGrouping
            }
            grouping = Grouping(primary: Cardinal(UInt(primary.count)), secondary: Cardinal(UInt(secondary)))
        }
        return (
            minimumIntegerDigits: Cardinal(UInt(digits.count { $0 == "0" })),
            minimumFractionDigits: Cardinal(UInt(fraction.count { $0 == "0" })),
            maximumFractionDigits: Cardinal(UInt(fraction.count)),
            grouping: grouping
        )
    }
}
