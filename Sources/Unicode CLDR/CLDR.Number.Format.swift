public import Cardinal

extension CLDR.Number {

    public struct Format: Sendable, Hashable {

        public var minimumIntegerDigits: Cardinal?

        public var minimumFractionDigits: Cardinal?

        public var maximumFractionDigits: Cardinal?

        public var minimumSignificantDigits: Cardinal?

        public var maximumSignificantDigits: Cardinal?

        public var grouping: Grouping

        public var sign: Sign

        public init(
            minimumIntegerDigits: Cardinal? = nil,
            minimumFractionDigits: Cardinal? = nil,
            maximumFractionDigits: Cardinal? = nil,
            minimumSignificantDigits: Cardinal? = nil,
            maximumSignificantDigits: Cardinal? = nil,
            grouping: Grouping = .auto,
            sign: Sign = .auto
        ) {
            self.minimumIntegerDigits = minimumIntegerDigits
            self.minimumFractionDigits = minimumFractionDigits
            self.maximumFractionDigits = maximumFractionDigits
            self.minimumSignificantDigits = minimumSignificantDigits
            self.maximumSignificantDigits = maximumSignificantDigits
            self.grouping = grouping
            self.sign = sign
        }
    }
}

extension CLDR.Number.Format {

    public static let decimal = Self()
}
