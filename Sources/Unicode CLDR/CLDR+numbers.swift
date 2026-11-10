public import BCP_47
public import Cardinal
public import Locale_Standard

extension CLDR {

    public static func symbols(in locale: Locale) -> Number.Symbols {
        Resolution(locale).record.number.symbols
    }

    @_disfavoredOverload
    public static func symbols(in tag: BCP47.LanguageTag) -> Number.Symbols {
        Resolution(tag).record.number.symbols
    }

    public static func decimalPattern(in locale: Locale) -> Number.Pattern {
        Resolution(locale).record.number.pattern
    }

    @_disfavoredOverload
    public static func decimalPattern(in tag: BCP47.LanguageTag) -> Number.Pattern {
        Resolution(tag).record.number.pattern
    }

    public static func digits(in locale: Locale) -> [Character] {
        Resolution(locale).record.number.digits
    }

    @_disfavoredOverload
    public static func digits(in tag: BCP47.LanguageTag) -> [Character] {
        Resolution(tag).record.number.digits
    }

    public static func minimumGroupingDigits(in locale: Locale) -> Cardinal {
        Resolution(locale).record.number.minimumGroupingDigits
    }

    @_disfavoredOverload
    public static func minimumGroupingDigits(in tag: BCP47.LanguageTag) -> Cardinal {
        Resolution(tag).record.number.minimumGroupingDigits
    }
}
