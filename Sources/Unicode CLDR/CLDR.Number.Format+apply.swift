import Cardinal

extension CLDR.Number.Format {

    func rounded(_ decimal: CLDR.Number.Decimal, _ pattern: CLDR.Number.Pattern) -> CLDR.Number.Decimal {
        let significant = minimumSignificantDigits != nil || maximumSignificantDigits != nil
        let minimumSignificant = max(1, Int(clamping: minimumSignificantDigits ?? 1))
        let maximumSignificant = max(minimumSignificant, Int(clamping: maximumSignificantDigits ?? 21))
        let minimumFraction = Int(clamping: minimumFractionDigits ?? pattern.minimumFractionDigits)
        let maximumFraction = max(minimumFraction, Int(clamping: maximumFractionDigits ?? pattern.maximumFractionDigits))
        let bySignificance = {
            decimal
                .rounded(significantDigits: maximumSignificant, rounding)
                .trimmed(toSignificantDigits: minimumSignificant)
                .padded(toSignificantDigits: minimumSignificant)
        }
        let byFraction = {
            decimal
                .rounded(fractionDigits: maximumFraction, increment: Int(clamping: increment), rounding)
                .trimmed(toFractionDigits: minimumFraction)
                .padded(toFractionDigits: minimumFraction)
        }
        let result: CLDR.Number.Decimal
        switch priority {
        case .auto:
            result = significant ? bySignificance() : byFraction()

        case .morePrecision, .lessPrecision:
            let significantPosition = maximumSignificant - decimal.point
            let more = significantPosition >= maximumFraction
            result = (priority == .morePrecision) == more ? bySignificance() : byFraction()
        }
        guard trailingZeros == .stripIfInteger, result.fractionDigits.allSatisfy({ $0 == 0 }) else {
            return result
        }
        return result.trimmed(toFractionDigits: 0)
    }

    func parts(_ decimal: CLDR.Number.Decimal, _ data: CLDR.Number.Data) -> [CLDR.Number.Part] {
        let pattern = data.pattern
        var integer = decimal.integerDigits.map { Character(String($0)) }
        let minimumInteger = Int(clamping: minimumIntegerDigits ?? pattern.minimumIntegerDigits)
        if integer.count < minimumInteger {
            integer = Array(repeating: "0", count: minimumInteger - integer.count) + integer
        }
        if integer.isEmpty, decimal.fractionDigits.isEmpty {
            integer = ["0"]
        }
        var body: [CLDR.Number.Part] = []
        for (index, group) in groups(data.localized(String(integer)), data).enumerated() {
            if index > 0 {
                body.append(.group(data.symbols.group))
            }
            body.append(.integer(group))
        }
        let fraction = decimal.fractionDigits.map(String.init).joined()
        if !fraction.isEmpty {
            body.append(.decimal(data.symbols.decimal))
            body.append(.fraction(data.localized(fraction)))
        }
        return signed(body, negative: decimal.isNegative, zero: decimal.isZero, data)
    }

    func groups(_ integer: String, _ data: CLDR.Number.Data) -> [String] {
        guard let grouping = data.pattern.grouping else {
            return [integer]
        }
        let minimum: Int? =
            switch self.grouping {
            case .auto: Int(clamping: data.minimumGroupingDigits)
            case .always: 1
            case .min2: max(2, Int(clamping: data.minimumGroupingDigits))
            case .never: nil
            }
        let digits = Array(integer)
        let primary = Int(clamping: grouping.primary)
        let secondary = Int(clamping: grouping.secondary)
        guard let minimum, digits.count >= primary + minimum else {
            return [integer]
        }
        var groups: [String] = [String(digits.suffix(primary))]
        var end = digits.count - primary
        while end > 0 {
            let start = max(0, end - secondary)
            groups.insert(String(digits[start..<end]), at: 0)
            end = start
        }
        return groups
    }

    func signed(_ body: [CLDR.Number.Part], negative: Bool, zero: Bool, _ data: CLDR.Number.Data) -> [CLDR.Number.Part] {
        let pattern = data.pattern
        let shown: CLDR.Number.Pattern.Affix? =
            switch sign {
            case .auto: negative ? .minusSign : nil
            case .always: negative ? .minusSign : .plusSign
            case .exceptZero: zero ? nil : negative ? .minusSign : .plusSign
            case .negative: negative && !zero ? .minusSign : nil
            case .never: nil
            }
        let affixes: CLDR.Number.Pattern.Affixes
        switch shown {
        case .minusSign:
            affixes =
                pattern.negative
                ?? CLDR.Number.Pattern.Affixes(prefix: [.minusSign] + pattern.positive.prefix, suffix: pattern.positive.suffix)

        case .plusSign:
            affixes =
                pattern.negative.map {
                    CLDR.Number.Pattern.Affixes(
                        prefix: $0.prefix.map { $0 == .minusSign ? .plusSign : $0 },
                        suffix: $0.suffix.map { $0 == .minusSign ? .plusSign : $0 }
                    )
                }
                ?? CLDR.Number.Pattern.Affixes(prefix: [.plusSign] + pattern.positive.prefix, suffix: pattern.positive.suffix)

        case .text, .none:
            affixes = pattern.positive
        }
        return render(affixes.prefix, data) + body + render(affixes.suffix, data)
    }

    func render(_ pieces: [CLDR.Number.Pattern.Affix], _ data: CLDR.Number.Data) -> [CLDR.Number.Part] {
        pieces.map { piece in
            switch piece {
            case .text(let text): .literal(text)
            case .minusSign: .minusSign(data.symbols.minusSign)
            case .plusSign: .plusSign(data.symbols.plusSign)
            }
        }
    }
}
