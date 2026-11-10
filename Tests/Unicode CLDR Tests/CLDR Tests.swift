import Testing
import Unicode_CLDR

enum `CLDR Tests` {}

extension `CLDR Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `CLDR Tests`.Test.Unit {

    @Test
    func `the point of use reads as the issue sketches it`() throws {
        let date = try ISO_8601.CalendarDate(year: 2026, month: 11, day: 10)
        #expect(date.formatted(.long, in: .nl) == "10 november 2026")
        #expect(date.formatted(.long, in: .en) == "November 10, 2026")
        #expect(date.formatted(.long, in: Locale(language: .en, region: .gb)) == "10 November 2026")
        #expect(CLDR.months(.wide, in: .nl)[.march] == "maart")
        #expect(CLDR.plural(3, in: .nl) == .other)
        #expect(1234.5.formatted(.decimal, in: .nl) == "1.234,5")
    }

    @Test
    func `the data is CLDR 49 at modern coverage`() {
        #expect(CLDR.version == "49.0.0")
        #expect(CLDR.identifiers.count == 421)
        #expect(CLDR.identifiers.contains("nl"))
        #expect(CLDR.identifiers.contains("und"))
        #expect(!CLDR.identifiers.contains("fy"))
    }

    @Test
    func `month and weekday names come in every width and context`() {
        #expect(CLDR.months(.abbreviated, in: .nl)[.march] == "mrt")
        #expect(CLDR.months(.narrow, in: .nl)[.march] == "M")
        #expect(CLDR.months(.wide, in: .ru, context: .format)[.march] == "марта")
        #expect(CLDR.months(.wide, in: .ru, context: .standAlone)[.march] == "март")
        #expect(CLDR.days(.wide, in: .nl)[.monday] == "maandag")
        #expect(CLDR.days(.abbreviated, in: .en)[.sunday] == "Sun")
        #expect(CLDR.days(.short, in: .en)[.sunday] == "Su")
        #expect(CLDR.days(.narrow, in: .en, context: .standAlone)[.sunday] == "S")
    }

    @Test
    func `every identifier names twelve months and seven days`() throws {
        for identifier in CLDR.identifiers {
            let tag = try BCP47.LanguageTag(identifier)
            for width in CLDR.Months.Width.allCases {
                for context in CLDR.Context.allCases {
                    #expect(CLDR.months(width, in: tag, context: context).names.count == 12)
                }
            }
            for width in CLDR.Days.Width.allCases {
                for context in CLDR.Context.allCases {
                    #expect(CLDR.days(width, in: tag, context: context).names.count == 7)
                }
            }
        }
    }
}

extension `CLDR Tests`.Test.Unit {

    @Test
    func `the character order of a locale is its direction`() throws {
        #expect(CLDR.direction(in: .en) == .leftToRight)
        #expect(CLDR.direction(in: .ar) == .rightToLeft)
        #expect(CLDR.direction(in: try BCP47.LanguageTag("he")) == .rightToLeft)
        #expect(CLDR.direction(in: try BCP47.LanguageTag("fa-AF")) == .rightToLeft)
        #expect(CLDR.direction(in: try BCP47.LanguageTag("kk-Arab")) == .rightToLeft)
        #expect(CLDR.direction(in: try BCP47.LanguageTag("kk")) == .leftToRight)
        let rightToLeft = try CLDR.identifiers.filter { CLDR.direction(in: try BCP47.LanguageTag($0)) == .rightToLeft }
        #expect(rightToLeft.count == 38)
    }
}

extension `CLDR Tests`.Test.`Edge Case` {

    @Test
    func `a language outside modern coverage falls back to root`() throws {
        let frisian = try BCP47.LanguageTag("fy")
        #expect(CLDR.identifier(in: frisian) == "und")
        #expect(CLDR.months(.wide, in: frisian)[.march] == "M03")
    }
}
