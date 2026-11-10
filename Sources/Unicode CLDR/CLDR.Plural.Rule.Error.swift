extension CLDR.Plural.Rule {

    public enum Error: Swift::Error, Sendable, Equatable {
        case unexpectedEnd
        case expectedOperand(String)
        case expectedComparison(String)
        case expectedNumber(String)
        case invalidRange(String)
        case unexpected(String)
    }
}
