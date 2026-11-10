import Testing
import Unicode_CLDR

enum `CLDR.Date.Pattern Tests` {}

extension `CLDR.Date.Pattern Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `CLDR.Date.Pattern Tests`.Test.Unit {

    @Test
    func `every style formats a date in its locale`() throws {
        let date = try ISO_8601.CalendarDate(year: 2026, month: 11, day: 10)
        #expect(date.formatted(.full, in: .nl) == "dinsdag 10 november 2026")
        #expect(date.formatted(.medium, in: .nl) == "10 nov 2026")
        #expect(date.formatted(.short, in: .nl) == "10-11-2026")
        #expect(date.formatted(.full, in: .en) == "Tuesday, November 10, 2026")
        #expect(date.formatted(.short, in: .en) == "11/10/26")
        #expect(date.formatted(.long, in: .ja) == "2026年11月10日")
        #expect(date.formatted(.long, in: .ru) == "10 ноября 2026\u{202F}г.")
        #expect(date.formatted(.long, in: try BCP47.LanguageTag("de-AT")) == "10. November 2026")
    }

    @Test
    func `dates use the locale's default digits`() throws {
        let date = try ISO_8601.CalendarDate(year: 2026, month: 11, day: 10)
        let bengali = try BCP47.LanguageTag("bn")
        #expect(CLDR.digits(in: bengali) == ["০", "১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯"])
        #expect(date.formatted(.long, in: bengali) == "১০ নভেম্বর, ২০২৬")
    }

    @Test
    func `every generated pattern is the parse of its text`() throws {
        for identifier in CLDR.identifiers {
            let tag = try BCP47.LanguageTag(identifier)
            for style in CLDR.Date.Style.allCases {
                let pattern = CLDR.dateFormat(style, in: tag)
                #expect(try CLDR.Date.Pattern(pattern.text) == pattern)
            }
        }
    }

    @Test
    func `quoted text is literal and two quotes are one`() throws {
        let pattern = try CLDR.Date.Pattern("d 'de' MMMM 'o''clock' ''y")
        #expect(
            pattern.elements == [
                .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" o'clock '"), .field(.year, 1),
            ]
        )
        let date = try ISO_8601.CalendarDate(year: 2026, month: 3, day: 1)
        #expect(date.formatted(pattern, in: .es) == "1 de marzo o'clock '2026")
    }

    @Test
    func `fields take their width`() throws {
        let date = try ISO_8601.CalendarDate(year: 2026, month: 3, day: 1)
        let pattern = try CLDR.Date.Pattern("G GGGG GGGGG y yy yyyyy M MM MMM MMMM MMMMM LLLL d dd E EEEE EEEEE EEEEEE cccc")
        #expect(
            date.formatted(pattern, in: .en)
                == "AD Anno Domini A 2026 26 02026 3 03 Mar March M March 1 01 Sun Sunday S Su Sunday"
        )
    }
}

extension `CLDR.Date.Pattern Tests`.Test.`Edge Case` {

    @Test
    func `years before 1 count backwards in the era before`() throws {
        let date = try ISO_8601.CalendarDate(year: 0, month: 1, day: 1)
        #expect(date.formatted(try CLDR.Date.Pattern("y G"), in: .en) == "1 BC")
    }

    @Test
    func `fields a calendar date cannot fill are refused`() {
        #expect(throws: CLDR.Date.Pattern.Error.unsupportedField("H", 2)) {
            try CLDR.Date.Pattern("HH:mm")
        }
        #expect(throws: CLDR.Date.Pattern.Error.unsupportedField("d", 3)) {
            try CLDR.Date.Pattern("ddd")
        }
        #expect(throws: CLDR.Date.Pattern.Error.unsupportedField("c", 1)) {
            try CLDR.Date.Pattern("c")
        }
    }

    @Test
    func `an unterminated quote is refused`() {
        #expect(throws: CLDR.Date.Pattern.Error.unterminatedQuote) {
            try CLDR.Date.Pattern("d 'de MMMM")
        }
    }
}
