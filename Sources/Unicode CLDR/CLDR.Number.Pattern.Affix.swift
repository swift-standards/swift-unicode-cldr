extension CLDR.Number.Pattern {

    public enum Affix: Sendable, Hashable {
        case text(String)
        case minusSign
        case plusSign
    }
}
