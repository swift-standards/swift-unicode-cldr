extension CLDR.Number.Pattern {

    public struct Affixes: Sendable, Hashable {

        public let prefix: [Affix]

        public let suffix: [Affix]

        public init(prefix: [Affix], suffix: [Affix]) {
            self.prefix = prefix
            self.suffix = suffix
        }
    }
}
