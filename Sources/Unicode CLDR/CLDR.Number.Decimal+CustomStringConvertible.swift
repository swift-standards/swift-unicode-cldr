extension CLDR.Number.Decimal: CustomStringConvertible {

    public var description: String {
        let integer = integerDigits.isEmpty ? "0" : integerDigits.map(String.init).joined()
        let fraction = fractionDigits.map(String.init).joined()
        return (isNegative ? "-" : "") + integer + (fraction.isEmpty ? "" : "." + fraction)
    }
}
