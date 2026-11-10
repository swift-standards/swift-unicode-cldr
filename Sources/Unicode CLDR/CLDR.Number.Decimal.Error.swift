extension CLDR.Number.Decimal {

    public enum Error: Swift::Error, Sendable, Equatable {
        case missingDigits
        case leadingZero
        case exponentOutOfRange
        case unexpected(Character)
    }
}
