public import BCP_47
public import Locale_Standard

extension CLDR {

    public static func pluralRules(_ kind: Plural.Kind = .cardinal, in locale: Locale) -> Plural.Rules {
        Resolution(locale).rules(kind)
    }

    @_disfavoredOverload
    public static func pluralRules(_ kind: Plural.Kind = .cardinal, in tag: BCP47.LanguageTag) -> Plural.Rules {
        Resolution(tag).rules(kind)
    }

    public static func plural(_ operands: Plural.Operands, _ kind: Plural.Kind = .cardinal, in locale: Locale) -> Plural.Category {
        Resolution(locale).rules(kind).category(for: operands)
    }

    @_disfavoredOverload
    public static func plural(_ operands: Plural.Operands, _ kind: Plural.Kind = .cardinal, in tag: BCP47.LanguageTag) -> Plural.Category {
        Resolution(tag).rules(kind).category(for: operands)
    }

    public static func plural(_ value: some BinaryInteger, _ kind: Plural.Kind = .cardinal, in locale: Locale) -> Plural.Category {
        plural(Plural.Operands(value), kind, in: locale)
    }

    @_disfavoredOverload
    public static func plural(_ value: some BinaryInteger, _ kind: Plural.Kind = .cardinal, in tag: BCP47.LanguageTag) -> Plural.Category {
        plural(Plural.Operands(value), kind, in: tag)
    }

    public static func plural(_ value: Number.Decimal, _ kind: Plural.Kind = .cardinal, in locale: Locale) -> Plural.Category {
        plural(Plural.Operands(value), kind, in: locale)
    }

    @_disfavoredOverload
    public static func plural(_ value: Number.Decimal, _ kind: Plural.Kind = .cardinal, in tag: BCP47.LanguageTag) -> Plural.Category {
        plural(Plural.Operands(value), kind, in: tag)
    }
}
