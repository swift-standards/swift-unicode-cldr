extension CLDR.Number.Pattern {

    public enum Error: Swift::Error, Sendable, Equatable {
        case unterminatedQuote
        case unsupported(Character)
        case unexpected(Character)
        case missingDigits
        case misplacedDigit
        case misplacedGrouping
    }
}
