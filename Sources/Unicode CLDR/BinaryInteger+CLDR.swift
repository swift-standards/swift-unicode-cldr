public import BCP_47
public import Locale_Standard

extension BinaryInteger {

    public func formatted(_ format: CLDR.Number.Format, in locale: Locale) -> String {
        CLDR.Number.Decimal(self).formatted(format, in: locale)
    }

    @_disfavoredOverload
    public func formatted(_ format: CLDR.Number.Format, in tag: BCP47.LanguageTag) -> String {
        CLDR.Number.Decimal(self).formatted(format, in: tag)
    }
}
