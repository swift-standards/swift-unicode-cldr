extension CLDR.Number.Format {

    public enum Rounding: Sendable, Hashable, CaseIterable {
        case ceil
        case floor
        case expand
        case trunc
        case halfCeil
        case halfFloor
        case halfExpand
        case halfTrunc
        case halfEven
    }
}
