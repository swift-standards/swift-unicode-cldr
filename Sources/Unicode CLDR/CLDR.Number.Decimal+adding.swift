extension CLDR.Number.Decimal {

    public func adding(_ other: Self) -> Self {
        let scale = max(fractionDigits.count, other.fractionDigits.count)
        let left = scaled(scale)
        let right = other.scaled(scale)
        guard isNegative != other.isNegative else {
            let sum = Self.sum(left, right)
            return Self(negative: isNegative && !sum.allSatisfy { $0 == 0 }, digits: sum, point: sum.count - scale)
        }
        let leftLarger = Self.compare(left, right) >= 0
        let difference = leftLarger ? Self.difference(left, right) : Self.difference(right, left)
        let negative = (leftLarger ? isNegative : other.isNegative) && !difference.allSatisfy { $0 == 0 }
        return Self(negative: negative, digits: difference, point: difference.count - scale)
    }

    public func adding(_ value: some BinaryInteger) -> Self {
        adding(Self(value))
    }

    func scaled(_ scale: Int) -> [UInt8] {
        let fraction = fractionDigits
        return integerDigits + fraction + Array(repeating: 0, count: scale - fraction.count)
    }

    static func compare(_ left: [UInt8], _ right: [UInt8]) -> Int {
        let a = Array(left.drop { $0 == 0 })
        let b = Array(right.drop { $0 == 0 })
        if a.count != b.count {
            return a.count < b.count ? -1 : 1
        }
        for (x, y) in zip(a, b) where x != y {
            return x < y ? -1 : 1
        }
        return 0
    }

    static func sum(_ left: [UInt8], _ right: [UInt8]) -> [UInt8] {
        var result: [UInt8] = []
        var carry = 0
        var a = left.reversed().makeIterator()
        var b = right.reversed().makeIterator()
        while true {
            let x = a.next()
            let y = b.next()
            guard x != nil || y != nil || carry > 0 else {
                break
            }
            let total = Int(x ?? 0) + Int(y ?? 0) + carry
            result.append(UInt8(total % 10))
            carry = total / 10
        }
        return result.reversed()
    }

    static func difference(_ larger: [UInt8], _ smaller: [UInt8]) -> [UInt8] {
        var result: [UInt8] = []
        var borrow = 0
        var b = smaller.reversed().makeIterator()
        for x in larger.reversed() {
            var total = Int(x) - Int(b.next() ?? 0) - borrow
            borrow = 0
            if total < 0 {
                total += 10
                borrow = 1
            }
            result.append(UInt8(total))
        }
        return result.reversed()
    }
}
