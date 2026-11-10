import Testing
import Unicode_CLDR

enum `CLDR.Resolution Tests` {}

extension `CLDR.Resolution Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `CLDR.Resolution Tests`.Test.Unit {

    @Test(arguments: [
        ("nl-NL", "nl"),
        ("nl-BE", "nl-BE"),
        ("en-AU", "en-AU"),
        ("en-NL", "en-NL"),
        ("en-XK", "en"),
        ("es-419", "es-419"),
        ("es-MX", "es-MX"),
        ("ca-ES-valencia", "ca-ES-valencia"),
        ("zh", "zh"),
        ("zh-CN", "zh"),
        ("zh-TW", "zh-Hant"),
        ("zh-Hant-HK", "zh-Hant-HK"),
        ("sr-ME", "sr-Latn-ME"),
        ("sr-Latn", "sr-Latn"),
        ("NL-nl", "nl"),
        ("nl-Latn-NL", "nl"),
    ])
    func `tags resolve along CLDR's inheritance chain`(tag: String, identifier: String) throws {
        #expect(CLDR.identifier(in: try BCP47.LanguageTag(tag)) == identifier)
    }

    @Test
    func `a Locale and its tag resolve alike`() throws {
        let locale = Locale(language: .pt, region: .pt)
        #expect(CLDR.identifier(in: locale) == "pt-PT")
        #expect(CLDR.identifier(in: try locale.languageTag()) == "pt-PT")
        #expect(CLDR.identifier(in: Locale(language: .zh, script: .Hant)) == "zh-Hant")
    }

    @Test
    func `every identifier resolves to data equal to its own`() throws {
        for identifier in CLDR.identifiers {
            let tag = try BCP47.LanguageTag(identifier)
            let resolved = try BCP47.LanguageTag(CLDR.identifier(in: tag))
            #expect(CLDR.months(.wide, in: tag) == CLDR.months(.wide, in: resolved))
            #expect(CLDR.dateFormat(.full, in: tag) == CLDR.dateFormat(.full, in: resolved))
            #expect(CLDR.symbols(in: tag) == CLDR.symbols(in: resolved))
        }
    }
}

extension `CLDR.Resolution Tests`.Test.`Edge Case` {

    @Test(arguments: [("iw", "he"), ("in", "id"), ("nb", "no"), ("tl", "fil")])
    func `deprecated and legacy language codes are replaced`(tag: String, identifier: String) throws {
        #expect(CLDR.identifier(in: try BCP47.LanguageTag(tag)) == identifier)
    }

    @Test
    func `extensions and private use are ignored`() throws {
        #expect(CLDR.identifier(in: try BCP47.LanguageTag("nl-NL-u-nu-arab")) == "nl")
        #expect(CLDR.identifier(in: try BCP47.LanguageTag("nl-x-private")) == "nl")
    }
}
