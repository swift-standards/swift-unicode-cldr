public import BCP_47
public import Locale_Standard

extension CLDR {

    public static var identifiers: [String] {
        Record.identifiers
    }

    public static func identifier(in locale: Locale) -> String {
        Resolution(locale).identifier
    }

    @_disfavoredOverload
    public static func identifier(in tag: BCP47.LanguageTag) -> String {
        Resolution(tag).identifier
    }
}
