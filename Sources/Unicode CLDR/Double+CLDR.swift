public import BCP_47
public import Locale_Standard

extension Double {

    public func formatted(_ format: CLDR.Number.Format, in locale: Locale) -> String {
        formatted(format, CLDR.Resolution(locale).record.number)
    }

    @_disfavoredOverload
    public func formatted(_ format: CLDR.Number.Format, in tag: BCP47.LanguageTag) -> String {
        formatted(format, CLDR.Resolution(tag).record.number)
    }

    func formatted(_ format: CLDR.Number.Format, _ data: CLDR.Number.Data) -> String {
        guard let decimal = CLDR.Number.Decimal(self) else {
            if isNaN {
                return data.symbols.nan
            }
            return format.signed(data.symbols.infinity, negative: sign == .minus, zero: false, data)
        }
        return decimal.formatted(format, data)
    }
}
