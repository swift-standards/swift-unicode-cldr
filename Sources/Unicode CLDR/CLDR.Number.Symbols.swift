extension CLDR.Number {

    public struct Symbols: Sendable, Hashable {

        public let decimal: String

        public let group: String

        public let minusSign: String

        public let plusSign: String

        public let infinity: String

        public let nan: String

        init(decimal: String, group: String, minusSign: String, plusSign: String, infinity: String, nan: String) {
            self.decimal = decimal
            self.group = group
            self.minusSign = minusSign
            self.plusSign = plusSign
            self.infinity = infinity
            self.nan = nan
        }
    }
}
