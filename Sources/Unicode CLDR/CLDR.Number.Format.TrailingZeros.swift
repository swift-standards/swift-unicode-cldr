extension CLDR.Number.Format {

    public enum TrailingZeros: Sendable, Hashable, CaseIterable {
        case auto
        case stripIfInteger
    }
}
