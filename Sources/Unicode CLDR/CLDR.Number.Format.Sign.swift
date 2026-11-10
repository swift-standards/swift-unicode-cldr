extension CLDR.Number.Format {

    public enum Sign: Sendable, Hashable, CaseIterable {
        case auto
        case always
        case exceptZero
        case negative
        case never
    }
}
