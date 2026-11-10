extension CLDR.Plural {

    public struct Rules: Sendable, Hashable {

        public let rules: [Rule]

        public init(_ rules: [Rule]) {
            self.rules = rules
        }
    }
}

extension CLDR.Plural.Rules {

    public func category(for operands: CLDR.Plural.Operands) -> CLDR.Plural.Category {
        rules.first { $0.holds(for: operands) }?.category ?? .other
    }

    public var categories: [CLDR.Plural.Category] {
        rules.map(\.category) + [.other]
    }
}
