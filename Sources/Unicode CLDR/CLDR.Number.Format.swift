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

        public var rounding: Rounding

        public var increment: Cardinal

        public var priority: Priority

        public var trailingZeros: TrailingZeros

        public init(
            minimumIntegerDigits: Cardinal? = nil,
            minimumFractionDigits: Cardinal? = nil,
            maximumFractionDigits: Cardinal? = nil,
            minimumSignificantDigits: Cardinal? = nil,
            maximumSignificantDigits: Cardinal? = nil,
            grouping: Grouping = .auto,
            sign: Sign = .auto,
            rounding: Rounding = .halfEven,
            increment: Cardinal = 1,
            priority: Priority = .auto,
            trailingZeros: TrailingZeros = .auto
        ) {
            self.minimumIntegerDigits = minimumIntegerDigits
            self.minimumFractionDigits = minimumFractionDigits
            self.maximumFractionDigits = maximumFractionDigits
            self.minimumSignificantDigits = minimumSignificantDigits
            self.maximumSignificantDigits = maximumSignificantDigits
            self.grouping = grouping
            self.sign = sign
            self.rounding = rounding
            self.increment = increment
            self.priority = priority
            self.trailingZeros = trailingZeros
        }
    }
}

extension CLDR.Number.Format {

    public static let decimal = Self()
}
