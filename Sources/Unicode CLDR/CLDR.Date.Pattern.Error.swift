extension CLDR.Date.Pattern {

    public enum Error: Swift::Error, Sendable, Equatable {
        case unterminatedQuote
        case unsupportedField(Character, Int)
    }
}
