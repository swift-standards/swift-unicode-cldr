public import BCP_47
public import Locale_Standard

extension CLDR {

    public static func direction(in locale: Locale) -> Direction {
        Resolution(locale).record.direction
    }

    @_disfavoredOverload
    public static func direction(in tag: BCP47.LanguageTag) -> Direction {
        Resolution(tag).record.direction
    }
}
