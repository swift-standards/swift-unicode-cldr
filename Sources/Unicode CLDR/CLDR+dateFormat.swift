public import BCP_47
public import Locale_Standard

extension CLDR {

    public static func dateFormat(_ style: Date.Style, in locale: Locale) -> Date.Pattern {
        Resolution(locale).record.date(style)
    }

    @_disfavoredOverload
    public static func dateFormat(_ style: Date.Style, in tag: BCP47.LanguageTag) -> Date.Pattern {
        Resolution(tag).record.date(style)
    }
}
