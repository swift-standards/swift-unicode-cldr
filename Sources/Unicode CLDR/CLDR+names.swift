public import BCP_47
public import Locale_Standard

extension CLDR {

    public static func months(_ width: Months.Width, in locale: Locale, context: Context = .format) -> Months {
        Resolution(locale).record.months(width, context)
    }

    @_disfavoredOverload
    public static func months(_ width: Months.Width, in tag: BCP47.LanguageTag, context: Context = .format) -> Months {
        Resolution(tag).record.months(width, context)
    }

    public static func days(_ width: Days.Width, in locale: Locale, context: Context = .format) -> Days {
        Resolution(locale).record.days(width, context)
    }

    @_disfavoredOverload
    public static func days(_ width: Days.Width, in tag: BCP47.LanguageTag, context: Context = .format) -> Days {
        Resolution(tag).record.days(width, context)
    }
}
