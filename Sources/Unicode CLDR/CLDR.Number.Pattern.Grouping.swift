public import Cardinal

extension CLDR.Number.Pattern {

    public struct Grouping: Sendable, Hashable {

        public let primary: Cardinal

        public let secondary: Cardinal

        public init(primary: Cardinal, secondary: Cardinal) {
            self.primary = primary
            self.secondary = secondary
        }
    }
}
