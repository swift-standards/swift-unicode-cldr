public import Cardinal

extension CLDR.Plural {

    public struct Operands: Sendable, Hashable {

        public let integer: Cardinal

        public let fraction: Cardinal

        public let fractionDigitCount: Cardinal

        public let significantFraction: Cardinal

        public let significantFractionDigitCount: Cardinal

        public let exponent: Cardinal
    }
}

extension CLDR.Plural.Operands {

    static let cap: UInt = 100_000_000_000_000_000

    public init(_ decimal: CLDR.Number.Decimal, exponent: Cardinal = .zero) {
        func number(_ digits: some Swift.Collection<UInt8>) -> Cardinal {
            var value: UInt = 0
            var large = false
            for digit in digits {
                value = value * 10 + UInt(digit)
                if value >= Self.cap {
                    large = true
                    value %= Self.cap
                }
            }
            return Cardinal(large ? Self.cap + value : value)
        }
        let fractionDigits = decimal.fractionDigits
        var significant = fractionDigits
        while significant.last == 0 {
            significant.removeLast()
        }
        self.integer = number(decimal.integerDigits)
        self.fraction = number(fractionDigits)
        self.fractionDigitCount = Cardinal(UInt(fractionDigits.count))
        self.significantFraction = number(significant)
        self.significantFractionDigitCount = Cardinal(UInt(significant.count))
        self.exponent = exponent
    }

    public init(_ value: some BinaryInteger) {
        self.init(CLDR.Number.Decimal(value))
    }

    public init(_ text: some StringProtocol) throws(CLDR.Number.Decimal.Error) {
        let parts = text.split(separator: "c", maxSplits: 1, omittingEmptySubsequences: false)
        let mantissa = try CLDR.Number.Decimal(parts[0])
        guard parts.count == 2 else {
            self.init(mantissa)
            return
        }
        let exponent = try CLDR.Number.Decimal(parts[1])
        guard !exponent.isNegative, exponent.fractionDigits.isEmpty, exponent.integerDigits.count <= 2 else {
            throw .exponentOutOfRange
        }
        let shift = exponent.integerDigits.reduce(0) { $0 * 10 + Int($1) }
        let scaled = CLDR.Number.Decimal(negative: mantissa.isNegative, digits: mantissa.digits, point: mantissa.point + shift)
        self.init(scaled.trimmed(toFractionDigits: 0), exponent: Cardinal(UInt(shift)))
    }
}

extension CLDR.Plural.Operands {

    public func value(_ operand: CLDR.Plural.Operand) -> Cardinal {
        switch operand {
        case .n, .i: integer
        case .v: fractionDigitCount
        case .w: significantFractionDigitCount
        case .f: fraction
        case .t: significantFraction
        case .c, .e: exponent
        }
    }
}
