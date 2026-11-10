public import Cardinal

extension CLDR.Plural {

    public struct Relation: Sendable, Hashable {

        public let operand: Operand

        public let modulus: Cardinal?

        public let comparison: Comparison

        public let ranges: [ClosedRange<Cardinal>]

        public init(_ operand: Operand, modulus: Cardinal?, _ comparison: Comparison, _ ranges: [ClosedRange<Cardinal>]) {
            self.operand = operand
            self.modulus = modulus
            self.comparison = comparison
            self.ranges = ranges
        }
    }
}

extension CLDR.Plural.Relation {

    public func holds(for operands: CLDR.Plural.Operands) -> Bool {
        let contained: Bool
        if operand == .n, operands.significantFractionDigitCount > .zero {
            contained = false
        } else {
            var value = operands.value(operand)
            if let modulus, modulus > .zero {
                value = Cardinal(UInt(clamping: Int(clamping: value) % Int(clamping: modulus)))
            }
            contained = ranges.contains { $0.contains(value) }
        }
        return comparison == .in ? contained : !contained
    }
}
