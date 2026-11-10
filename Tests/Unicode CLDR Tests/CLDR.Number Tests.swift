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
