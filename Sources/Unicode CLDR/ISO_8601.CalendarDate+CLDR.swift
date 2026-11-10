public import BCP_47
public import ISO_8601
public import Locale_Standard

extension ISO_8601.CalendarDate {

    public func formatted(_ style: CLDR.Date.Style, in locale: Locale) -> String {
        let record = CLDR.Resolution(locale).record
        return record.date(style).format(self, record)
    }

    @_disfavoredOverload
    public func formatted(_ style: CLDR.Date.Style, in tag: BCP47.LanguageTag) -> String {
        let record = CLDR.Resolution(tag).record
        return record.date(style).format(self, record)
    }

    public func formatted(_ pattern: CLDR.Date.Pattern, in locale: Locale) -> String {
        pattern.format(self, CLDR.Resolution(locale).record)
    }

    @_disfavoredOverload
    public func formatted(_ pattern: CLDR.Date.Pattern, in tag: BCP47.LanguageTag) -> String {
        pattern.format(self, CLDR.Resolution(tag).record)
    }
}
