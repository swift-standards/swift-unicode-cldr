extension CLDR.Number {

    public struct Decimal: Sendable, Hashable {

        public let isNegative: Bool

        var digits: [UInt8]

        var point: Int

        init(negative: Bool, digits: [UInt8], point: Int) {
            var digits = digits
            var point = point
            while let first = digits.first, first == 0 {
                digits.removeFirst()
                point -= 1
            }
            self.isNegative = negative
            self.digits = digits
            self.point = digits.isEmpty ? min(point, 0) : point
        }
    }
}

extension CLDR.Number.Decimal {

    public init(_ value: some BinaryInteger) {
        var magnitude = value.magnitude
        var digits: [UInt8] = []
        while magnitude > 0 {
            digits.append(UInt8(magnitude % 10))
            magnitude /= 10
        }
        digits.reverse()
        self.init(negative: value < 0, digits: digits, point: digits.count)
    }

    public init?(_ value: Double) {
        guard value.isFinite else {
            return nil
        }
        let parsed: Parsed
        do throws(Error) {
            parsed = try Self.parse(value.magnitude.description, exponentLeadingZeros: true)
        } catch {
            return nil
        }
        var digits = parsed.digits
        while let last = digits.last, last == 0, digits.count > parsed.point {
            digits.removeLast()
        }
        self.init(negative: value.sign == .minus, digits: digits, point: parsed.point)
    }

    public init(_ text: some StringProtocol) throws(Error) {
        let parsed = try Self.parse(text, exponentLeadingZeros: false)
        self.init(negative: parsed.negative, digits: parsed.digits, point: parsed.point)
    }

    typealias Parsed = (negative: Bool, digits: [UInt8], point: Int)

    static func parse(_ text: some StringProtocol, exponentLeadingZeros: Bool) throws(Error) -> Parsed {
        let characters = Array(text)
        var index = 0
        var negative = false
        if index < characters.count, characters[index] == "-" {
            negative = true
            index += 1
        }
        func digit(_ character: Character) -> UInt8? {
            guard let ascii = character.asciiValue, (48...57).contains(ascii) else {
                return nil
            }
            return ascii - 48
        }
        var integer: [UInt8] = []
        while index < characters.count, let value = digit(characters[index]) {
            integer.append(value)
            index += 1
        }
        guard !integer.isEmpty else {
            throw .missingDigits
        }
        guard integer.count == 1 || integer[0] != 0 else {
            throw .leadingZero
        }
        var fraction: [UInt8] = []
        if index < characters.count, characters[index] == "." {
            index += 1
            while index < characters.count, let value = digit(characters[index]) {
                fraction.append(value)
                index += 1
            }
            guard !fraction.isEmpty else {
                throw .missingDigits
            }
        }
        var exponent = 0
        if index < characters.count, characters[index] == "e" || characters[index] == "E" {
            index += 1
            var exponentNegative = false
            if index < characters.count, characters[index] == "+" || characters[index] == "-" {
                exponentNegative = characters[index] == "-"
                index += 1
            }
            var exponentDigits: [UInt8] = []
            while index < characters.count, let value = digit(characters[index]) {
                exponentDigits.append(value)
                index += 1
            }
            guard !exponentDigits.isEmpty else {
                throw .missingDigits
            }
            guard exponentLeadingZeros || exponentDigits.count == 1 || exponentDigits[0] != 0 else {
                throw .leadingZero
            }
            guard exponentDigits.count <= 6 else {
                throw .exponentOutOfRange
            }
            exponent = exponentDigits.reduce(0) { $0 * 10 + Int($1) }
            if exponentNegative {
                exponent = -exponent
            }
        }
        guard index == characters.count else {
            throw .unexpected(characters[index])
        }
        return (negative, integer + fraction, integer.count + exponent)
    }
}

extension CLDR.Number.Decimal {

    public var isZero: Bool {
        digits.isEmpty
    }

    public var integerDigits: [UInt8] {
        guard point > 0 else {
            return []
        }
        return (0..<point).map { $0 < digits.count ? digits[$0] : 0 }
    }

    public var fractionDigits: [UInt8] {
        guard digits.count > point else {
            return Array(repeating: 0, count: max(0, -point))
        }
        return Array(repeating: 0, count: max(0, -point)) + digits[max(point, 0)...]
    }
}

extension CLDR.Number.Decimal {

    func rounded(fractionDigits count: Int, increment: Int = 1, _ mode: CLDR.Number.Format.Rounding) -> Self {
        let step = max(1, increment)
        let cut = point + count
        let integer: [UInt8] = cut <= 0 ? [] : (0..<cut).map { $0 < digits.count ? digits[$0] : 0 }
        let discarded: [UInt8] =
            cut >= digits.count ? [] : Array(repeating: 0, count: max(0, -cut)) + digits[max(cut, 0)...]
        var quotient: [UInt8] = []
        var remainder = 0
        for digit in integer {
            remainder = remainder * 10 + Int(digit)
            quotient.append(UInt8(remainder / step))
            remainder %= step
        }
        let fractionNonzero = discarded.contains { $0 != 0 }
        guard remainder != 0 || fractionNonzero else {
            return Self(negative: isNegative, digits: integer, point: integer.count - count)
        }
        let doubled = 2 * remainder + ((discarded.first ?? 0) >= 5 ? 1 : 0)
        let beyondHalf = discarded.dropFirst().contains { $0 != 0 } || (discarded.first.map { $0 != 0 && $0 != 5 } ?? false)
        let comparison: Int = doubled > step || (doubled == step && beyondHalf) ? 1 : doubled == step ? 0 : -1
        let odd = (quotient.last ?? 0) % 2 == 1
        let away: Bool
        switch mode {
        case .ceil: away = !isNegative
        case .floor: away = isNegative
        case .expand: away = true
        case .trunc: away = false
        case .halfCeil: away = comparison > 0 || (comparison == 0 && !isNegative)
        case .halfFloor: away = comparison > 0 || (comparison == 0 && isNegative)
        case .halfExpand: away = comparison >= 0
        case .halfTrunc: away = comparison > 0
        case .halfEven: away = comparison > 0 || (comparison == 0 && odd)
        }
        var result = Self.subtracting(remainder, from: integer)
        if away {
            result = Self.adding(step, to: result)
        }
        return Self(negative: isNegative, digits: result, point: result.count - count)
    }

    func rounded(significantDigits count: Int, _ mode: CLDR.Number.Format.Rounding) -> Self {
        guard !digits.isEmpty else {
            return self
        }
        return rounded(fractionDigits: count - point, mode)
    }

    static func subtracting(_ value: Int, from digits: [UInt8]) -> [UInt8] {
        var result = digits
        var borrow = value
        for position in result.indices.reversed() where borrow > 0 {
            let current = Int(result[position]) - borrow % 10
            borrow /= 10
            if current < 0 {
                result[position] = UInt8(current + 10)
                borrow += 1
            } else {
                result[position] = UInt8(current)
            }
        }
        return result
    }

    static func adding(_ value: Int, to digits: [UInt8]) -> [UInt8] {
        var result = digits
        var carry = value
        for position in result.indices.reversed() where carry > 0 {
            let current = Int(result[position]) + carry % 10
            carry /= 10
            result[position] = UInt8(current % 10)
            carry += current / 10
        }
        while carry > 0 {
            result.insert(UInt8(carry % 10), at: 0)
            carry /= 10
        }
        return result
    }

    var fractionCount: Int {
        max(0, digits.count - point)
    }

    func trimmed(toFractionDigits minimum: Int) -> Self {
        var copy = self
        while copy.fractionCount > minimum {
            if copy.digits.isEmpty {
                copy.point += 1
            } else if copy.digits.last == 0 {
                copy.digits.removeLast()
            } else {
                break
            }
        }
        return copy
    }

    func padded(toFractionDigits minimum: Int) -> Self {
        var copy = self
        if copy.digits.isEmpty {
            copy.point = min(copy.point, -minimum)
            return copy
        }
        while copy.fractionCount < minimum {
            copy.digits.append(0)
        }
        return copy
    }

    func trimmed(toSignificantDigits minimum: Int) -> Self {
        var copy = self
        while copy.digits.count > minimum, copy.digits.count > copy.point, copy.digits.last == 0 {
            copy.digits.removeLast()
        }
        return copy
    }

    func padded(toSignificantDigits minimum: Int) -> Self {
        var copy = self
        if copy.digits.isEmpty {
            copy.point = min(copy.point, -(minimum - 1))
            return copy
        }
        while copy.digits.count < minimum {
            copy.digits.append(0)
        }
        return copy
    }
}
