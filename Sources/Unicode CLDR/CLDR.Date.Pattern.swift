extension CLDR.Date {

    public struct Pattern: Sendable, Hashable {

        public let text: String

        public let elements: [Element]

        init(text: String, elements: [Element]) {
            self.text = text
            self.elements = elements
        }
    }
}

extension CLDR.Date.Pattern {

    public init(_ text: some StringProtocol) throws(Error) {
        var elements: [Element] = []
        var literal = ""
        let characters = Array(text)
        var index = 0
        func flush() {
            if !literal.isEmpty {
                elements.append(.literal(literal))
                literal = ""
            }
        }
        while index < characters.count {
            let character = characters[index]
            if character == "'" {
                if index + 1 < characters.count, characters[index + 1] == "'" {
                    literal.append("'")
                    index += 2
                    continue
                }
                index += 1
                var closed = false
                while index < characters.count {
                    if characters[index] == "'" {
                        if index + 1 < characters.count, characters[index + 1] == "'" {
                            literal.append("'")
                            index += 2
                            continue
                        }
                        index += 1
                        closed = true
                        break
                    }
                    literal.append(characters[index])
                    index += 1
                }
                guard closed else {
                    throw .unterminatedQuote
                }
            } else if character.isASCII, character.isLetter {
                var end = index
                while end < characters.count, characters[end] == character {
                    end += 1
                }
                let width = end - index
                guard let field = Field(letter: character) else {
                    throw .unsupportedField(character, width)
                }
                guard field.widths.contains(width) else {
                    throw .unsupportedField(character, width)
                }
                flush()
                elements.append(.field(field, width))
                index = end
            } else {
                literal.append(character)
                index += 1
            }
        }
        flush()
        self.init(text: String(text), elements: elements)
    }
}
