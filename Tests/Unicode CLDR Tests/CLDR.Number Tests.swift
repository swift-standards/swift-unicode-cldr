import Testing
import Unicode_CLDR

enum `CLDR.Number Tests` {}

extension `CLDR.Number Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `CLDR.Number Tests`.Test.Unit {

    @Test
    func `numbers take the locale's symbols and pattern`() throws {
        #expect(1234.5.formatted(.decimal, in: .en) == "1,234.5")
        #expect(1_234_567.formatted(.decimal, in: .de) == "1.234.567")
        #expect(1_234_567.formatted(.decimal, in: .fr) == "1\u{202F}234\u{202F}567")
        #expect(1234567.89.formatted(.decimal, in: .hi) == "12,34,567.89")
        #expect(CLDR.symbols(in: .nl).decimal == ",")
        #expect(CLDR.symbols(in: .nl).group == ".")
        #expect(CLDR.decimalPattern(in: .nl).text == "#,##0.###")
        #expect(CLDR.decimalPattern(in: .hi).grouping == CLDR.Number.Pattern.Grouping(primary: 3, secondary: 2))
    }

    @Test
    func `minimum grouping digits hold back the first separator`() {
        #expect(CLDR.minimumGroupingDigits(in: .es) == 2)
        #expect(1234.formatted(.decimal, in: .es) == "1234")
        #expect(12345.formatted(.decimal, in: .es) == "12.345")
        #expect(1234.formatted(CLDR.Number.Format(grouping: .always), in: .es) == "1.234")
        #expect(1234.formatted(CLDR.Number.Format(grouping: .min2), in: .nl) == "1234")
        #expect(1234.formatted(CLDR.Number.Format(grouping: .never), in: .nl) == "1234")
    }

    @Test
    func `the decimal pattern rounds half to even at three fraction digits`() throws {
        #expect(1.0005.formatted(.decimal, in: .en) == "1")
        #expect(1.0015.formatted(.decimal, in: .en) == "1.002")
        #expect(try CLDR.Number.Decimal("1.0025").formatted(.decimal, in: .en) == "1.002")
        #expect(try CLDR.Number.Decimal("1.00251").formatted(.decimal, in: .en) == "1.003")
        #expect(try CLDR.Number.Decimal("0.9999").formatted(.decimal, in: .en) == "1")
        #expect(try CLDR.Number.Decimal("1.50").formatted(.decimal, in: .en) == "1.5")
    }

    @Test
    func `fraction and significant digits override the pattern`() throws {
        let two = CLDR.Number.Format(minimumFractionDigits: 2)
        #expect(1.formatted(two, in: .nl) == "1,00")
        #expect(1.234.formatted(CLDR.Number.Format(maximumFractionDigits: 1), in: .nl) == "1,2")
        #expect(1234.567.formatted(CLDR.Number.Format(maximumSignificantDigits: 2), in: .en) == "1,200")
        #expect(0.0001234.formatted(CLDR.Number.Format(maximumSignificantDigits: 2), in: .en) == "0.00012")
        #expect(1.formatted(CLDR.Number.Format(minimumSignificantDigits: 3), in: .en) == "1.00")
        #expect(7.formatted(CLDR.Number.Format(minimumIntegerDigits: 3), in: .en) == "007")
    }

    @Test(arguments: [
        (CLDR.Number.Format.Rounding.ceil, "3", "-2"),
        (.floor, "2", "-3"),
        (.expand, "3", "-3"),
        (.trunc, "2", "-2"),
        (.halfCeil, "3", "-2"),
        (.halfFloor, "2", "-3"),
        (.halfExpand, "3", "-3"),
        (.halfTrunc, "2", "-2"),
        (.halfEven, "2", "-2"),
    ])
    func `rounding modes decide a tie and a remainder`(rounding: CLDR.Number.Format.Rounding, positive: String, negative: String) throws {
        let format = CLDR.Number.Format(maximumFractionDigits: 0, rounding: rounding)
        #expect(try CLDR.Number.Decimal("2.5").formatted(format, in: .en) == positive)
        #expect(try CLDR.Number.Decimal("-2.5").formatted(format, in: .en) == negative)
    }

    @Test
    func `directed modes round any remainder`() throws {
        #expect(try CLDR.Number.Decimal("2.01").formatted(CLDR.Number.Format(maximumFractionDigits: 0, rounding: .ceil), in: .en) == "3")
        #expect(try CLDR.Number.Decimal("2.99").formatted(CLDR.Number.Format(maximumFractionDigits: 0, rounding: .trunc), in: .en) == "2")
        #expect(try CLDR.Number.Decimal("2.51").formatted(CLDR.Number.Format(maximumFractionDigits: 0, rounding: .halfTrunc), in: .en) == "3")
    }

    @Test
    func `an increment rounds to its multiples at the last fraction digit`() throws {
        let fives = CLDR.Number.Format(minimumFractionDigits: 2, maximumFractionDigits: 2, rounding: .halfExpand, increment: 5)
        #expect(try CLDR.Number.Decimal("1.23").formatted(fives, in: .en) == "1.25")
        #expect(try CLDR.Number.Decimal("1.22").formatted(fives, in: .en) == "1.20")
        #expect(try CLDR.Number.Decimal("1.98").formatted(fives, in: .en) == "2.00")
        let quarters = CLDR.Number.Format(minimumFractionDigits: 2, maximumFractionDigits: 2, rounding: .halfEven, increment: 25)
        #expect(try CLDR.Number.Decimal("1.375").formatted(quarters, in: .en) == "1.50")
        #expect(try CLDR.Number.Decimal("1.125").formatted(quarters, in: .en) == "1.00")
    }

    @Test
    func `rounding priority picks the more or the less precise result`() throws {
        let value = try CLDR.Number.Decimal("1.23456")
        let more = CLDR.Number.Format(maximumFractionDigits: 3, maximumSignificantDigits: 2, priority: .morePrecision)
        let less = CLDR.Number.Format(maximumFractionDigits: 3, maximumSignificantDigits: 2, priority: .lessPrecision)
        #expect(value.formatted(more, in: .en) == "1.235")
        #expect(value.formatted(less, in: .en) == "1.2")
        #expect(value.formatted(CLDR.Number.Format(maximumFractionDigits: 3, maximumSignificantDigits: 2), in: .en) == "1.2")
    }

    @Test
    func `trailing zeros of an integer can be stripped`() {
        let format = CLDR.Number.Format(minimumFractionDigits: 2, trailingZeros: .stripIfInteger)
        #expect(1.formatted(format, in: .en) == "1")
        #expect(1.5.formatted(format, in: .en) == "1.50")
    }

    @Test
    func `parts name each piece of the formatted number`() throws {
        #expect(
            try CLDR.Number.Decimal("-1234.5").formattedParts(.decimal, in: .en) == [
                .minusSign("-"), .integer("1"), .group(","), .integer("234"), .decimal("."), .fraction("5"),
            ]
        )
        #expect(42.0.formattedParts(.decimal, in: .en) == [.integer("42")])
        #expect((-Double.infinity).formattedParts(.decimal, in: .en) == [.minusSign("-"), .infinity("∞")])
        #expect(Double.nan.formattedParts(.decimal, in: .en) == [.nan("NaN")])
        let parts = try CLDR.Number.Decimal("-1234.5").formattedParts(.decimal, in: .nl)
        #expect(parts.map(\.text).joined() == (try CLDR.Number.Decimal("-1234.5")).formatted(.decimal, in: .nl))
    }

    @Test
    func `the sign follows the sign display`() {
        #expect((-5).formatted(.decimal, in: .en) == "-5")
        #expect(5.formatted(CLDR.Number.Format(sign: .always), in: .en) == "+5")
        #expect(0.formatted(CLDR.Number.Format(sign: .exceptZero), in: .en) == "0")
        #expect((-5).formatted(CLDR.Number.Format(sign: .exceptZero), in: .en) == "-5")
        #expect((-0.0001).formatted(CLDR.Number.Format(sign: .negative), in: .en) == "0")
        #expect((-5).formatted(CLDR.Number.Format(sign: .never), in: .en) == "5")
        #expect((-5).formatted(.decimal, in: .fa) == "\u{200E}−۵")
    }

    @Test
    func `the locale's default numbering system supplies the digits`() throws {
        #expect(1234.formatted(.decimal, in: try BCP47.LanguageTag("bn")) == "১,২৩৪")
        #expect(1234.formatted(.decimal, in: try BCP47.LanguageTag("mr")) == "१,२३४")
    }

    @Test
    func `every generated pattern is the parse of its text`() throws {
        for identifier in CLDR.identifiers {
            let pattern = CLDR.decimalPattern(in: try BCP47.LanguageTag(identifier))
            #expect(try CLDR.Number.Pattern(pattern.text) == pattern)
        }
    }

    @Test
    func `patterns read affixes and a negative subpattern`() throws {
        let pattern = try CLDR.Number.Pattern("'#'#,##0.00;(#,##0.00)")
        #expect(pattern.positive == CLDR.Number.Pattern.Affixes(prefix: [.text("#")], suffix: []))
        #expect(pattern.negative == CLDR.Number.Pattern.Affixes(prefix: [.text("(")], suffix: [.text(")")]))
        #expect(pattern.minimumFractionDigits == 2)
        #expect(pattern.maximumFractionDigits == 2)
        #expect(pattern.grouping == CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3))
    }
}

extension `CLDR.Number Tests`.Test.`Edge Case` {

    @Test
    func `doubles round trip through their shortest form`() {
        #expect(0.1.formatted(.decimal, in: .en) == "0.1")
        #expect(1e21.formatted(.decimal, in: .en) == "1,000,000,000,000,000,000,000")
        #expect(1e-7.formatted(.decimal, in: .en) == "0")
        #expect((-0.0).formatted(.decimal, in: .en) == "-0")
    }

    @Test
    func `infinity and NaN take the locale's symbols`() {
        #expect(Double.infinity.formatted(.decimal, in: .en) == "∞")
        #expect((-Double.infinity).formatted(.decimal, in: .en) == "-∞")
        #expect(Double.nan.formatted(.decimal, in: .en) == "NaN")
        #expect(Double.nan.formatted(.decimal, in: .ar) == "ليس\u{A0}رقمًا")
    }

    @Test
    func `decimal text follows the MessageFormat number literal`() throws {
        #expect(try CLDR.Number.Decimal("-12.50e3").description == "-12500")
        #expect(try CLDR.Number.Decimal("0.00").description == "0.00")
        #expect(throws: CLDR.Number.Decimal.Error.leadingZero) { try CLDR.Number.Decimal("01") }
        #expect(throws: CLDR.Number.Decimal.Error.missingDigits) { try CLDR.Number.Decimal("1.") }
        #expect(throws: CLDR.Number.Decimal.Error.missingDigits) { try CLDR.Number.Decimal(".5") }
        #expect(throws: CLDR.Number.Decimal.Error.unexpected(" ")) { try CLDR.Number.Decimal("1 ") }
        #expect(throws: CLDR.Number.Decimal.Error.missingDigits) { try CLDR.Number.Decimal("1e") }
    }

    @Test
    func `patterns outside the decimal subset are refused`() {
        #expect(throws: CLDR.Number.Pattern.Error.unsupported("%")) { try CLDR.Number.Pattern("#,##0%") }
        #expect(throws: CLDR.Number.Pattern.Error.unsupported("¤")) { try CLDR.Number.Pattern("¤#,##0.00") }
        #expect(throws: CLDR.Number.Pattern.Error.misplacedDigit) { try CLDR.Number.Pattern("0#") }
        #expect(throws: CLDR.Number.Pattern.Error.missingDigits) { try CLDR.Number.Pattern("abc") }
        #expect(throws: CLDR.Number.Pattern.Error.unterminatedQuote) { try CLDR.Number.Pattern("'a#") }
    }
}
