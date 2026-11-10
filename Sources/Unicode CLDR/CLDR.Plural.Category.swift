extension CLDR.Plural {

    public enum Category: String, Sendable, Hashable, CaseIterable {
        case zero
        case one
        case two
        case few
        case many
        case other
    }
}
