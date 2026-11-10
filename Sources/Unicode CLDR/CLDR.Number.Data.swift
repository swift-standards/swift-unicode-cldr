import Cardinal

extension CLDR.Number {

    struct Data: Sendable {

        let digits: [Character]

        let symbols: Symbols

        let pattern: Pattern

        let minimumGroupingDigits: Cardinal
    }
}

extension CLDR.Number.Data {

    func localized(_ value: Int, minimumDigits: Int) -> String {
        var text = String(value)
        if text.count < minimumDigits {
            text = String(repeating: "0", count: minimumDigits - text.count) + text
        }
        return localized(text)
    }

    func localized(_ text: String) -> String {
        String(
            text.map { character in
                character.asciiValue.map { Int($0) - 48 }.flatMap { (0...9).contains($0) ? digits[$0] : nil } ?? character
            }
        )
    }
}
