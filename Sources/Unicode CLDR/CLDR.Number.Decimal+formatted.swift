public import BCP_47
public import Locale_Standard

extension CLDR.Number.Decimal {

    public func rounded(_ format: CLDR.Number.Format, in locale: Locale) -> Self {
        format.rounded(self, CLDR.Resolution(locale).record.number.pattern)
    }

    @_disfavoredOverload
    public func rounded(_ format: CLDR.Number.Format, in tag: BCP47.LanguageTag) -> Self {
        format.rounded(self, CLDR.Resolution(tag).record.number.pattern)
    }

    public func formatted(_ format: CLDR.Number.Format, in locale: Locale) -> String {
        formatted(format, CLDR.Resolution(locale).record.number)
    }

    @_disfavoredOverload
    public func formatted(_ format: CLDR.Number.Format, in tag: BCP47.LanguageTag) -> String {
        formatted(format, CLDR.Resolution(tag).record.number)
    }

    func formatted(_ format: CLDR.Number.Format, _ data: CLDR.Number.Data) -> String {
        format.string(format.rounded(self, data.pattern), data)
    }
}
