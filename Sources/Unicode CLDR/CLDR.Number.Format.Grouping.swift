extension CLDR.Number.Format {

    public enum Grouping: Sendable, Hashable, CaseIterable {
        case auto
        case always
        case min2
        case never
    }
}
