extension CLDR.Number {

    public enum Part: Sendable, Hashable {
        case integer(String)
        case group(String)
        case decimal(String)
        case fraction(String)
        case minusSign(String)
        case plusSign(String)
        case literal(String)
        case infinity(String)
        case nan(String)
    }
}

extension CLDR.Number.Part {

    public var text: String {
        switch self {
        case .integer(let text), .group(let text), .decimal(let text), .fraction(let text), .minusSign(let text),
            .plusSign(let text), .literal(let text), .infinity(let text), .nan(let text):
            text
        }
    }
}
