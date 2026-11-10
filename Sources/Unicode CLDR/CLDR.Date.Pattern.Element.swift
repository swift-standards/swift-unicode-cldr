extension CLDR.Date.Pattern {

    public enum Element: Sendable, Hashable {
        case literal(String)
        case field(Field, Int)
    }
}
