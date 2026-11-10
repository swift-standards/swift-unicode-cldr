extension CLDR.Number.Format {

    public enum Priority: Sendable, Hashable, CaseIterable {
        case auto
        case morePrecision
        case lessPrecision
    }
}
