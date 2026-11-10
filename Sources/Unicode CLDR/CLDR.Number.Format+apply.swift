import Cardinal

extension CLDR.Number.Format {

    func rounded(_ decimal: CLDR.Number.Decimal, _ pattern: CLDR.Number.Pattern) -> CLDR.Number.Decimal {
        if minimumSignificantDigits != nil || maximumSignificantDigits != nil {
            let minimum = max(1, Int(clamping: minimumSignificantDigits ?? 1))
            let maximum = max(minimum, Int(clamping: maximumSignificantDigits ?? 21))
            return
                decimal
                .rounded(significantDigits: maximum)
                .trimmed(toSignificantDigits: minimum)
                .padded(toSignificantDigits: minimum)
        }
        let minimum = Int(clamping: minimumFractionDigits ?? pattern.minimumFractionDigits)
        let maximum = max(minimum, Int(clamping: maximumFractionDigits ?? pattern.maximumFractionDigits))
        return
            decimal
            .rounded(fractionDigits: maximum)
            .trimmed(toFractionDigits: minimum)
            .padded(toFractionDigits: minimum)
    }

    func string(_ decimal: CLDR.Number.Decimal, _ data: CLDR.Number.Data) -> String {
        let pattern = data.pattern
        var integer = decimal.integerDigits.map { Character(String($0)) }
        let minimumInteger = Int(clamping: minimumIntegerDigits ?? pattern.minimumIntegerDigits)
        if integer.count < minimumInteger {
            integer = Array(repeating: "0", count: minimumInteger - integer.count) + integer
        }
        if integer.isEmpty, decimal.fractionDigits.isEmpty {
            integer = ["0"]
        }
        var body = group(data.localized(String(integer)), data)
        let fraction = decimal.fractionDigits.map(String.init).joined()
        if !fraction.isEmpty {
            body += data.symbols.decimal + data.localized(fraction)
        }
        return signed(body, negative: decimal.isNegative, zero: decimal.isZero, data)
    }

    func group(_ integer: String, _ data: CLDR.Number.Data) -> String {
        guard let grouping = data.pattern.grouping else {
            return integer
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
            return integer
        }
        var groups: [String] = [String(digits.suffix(primary))]
        var end = digits.count - primary
        while end > 0 {
            let start = max(0, end - secondary)
            groups.insert(String(digits[start..<end]), at: 0)
            end = start
        }
        return groups.joined(separator: data.symbols.group)
    }

    func signed(_ body: String, negative: Bool, zero: Bool, _ data: CLDR.Number.Data) -> String {
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

    func render(_ pieces: [CLDR.Number.Pattern.Affix], _ data: CLDR.Number.Data) -> String {
        pieces.map { piece in
            switch piece {
            case .text(let text): text
            case .minusSign: data.symbols.minusSign
            case .plusSign: data.symbols.plusSign
            }
        }.joined()
    }
}
