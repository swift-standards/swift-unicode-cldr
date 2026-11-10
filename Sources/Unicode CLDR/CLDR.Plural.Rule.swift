import Cardinal

extension CLDR.Plural {

    public struct Rule: Sendable, Hashable {

        public let category: Category

        public let source: String

        public let condition: [[Relation]]

        init(_ category: Category, source: String, condition: [[Relation]]) {
            self.category = category
            self.source = source
            self.condition = condition
        }
    }
}

extension CLDR.Plural.Rule {

    public func holds(for operands: CLDR.Plural.Operands) -> Bool {
        condition.contains { relations in
            relations.allSatisfy { $0.holds(for: operands) }
        }
    }
}

extension CLDR.Plural.Rule {

    public init(_ category: CLDR.Plural.Category, parsing source: some StringProtocol) throws(Error) {
        var tokens: [String] = []
        var current = ""
        for character in source {
            if character == " " || character == "\t" {
                if !current.isEmpty {
                    tokens.append(current)
                    current = ""
                }
            } else if "=%,".contains(character) || (character == "!" && current.isEmpty) {
                if !current.isEmpty {
                    tokens.append(current)
                    current = ""
                }
                if character == "=", tokens.last == "!" {
                    tokens.removeLast()
                    tokens.append("!=")
                } else {
                    tokens.append(String(character))
                }
            } else {
                current.append(character)
            }
        }
        if !current.isEmpty {
            tokens.append(current)
        }
        var index = 0
        func next() -> String? {
            guard index < tokens.count else {
                return nil
            }
            defer { index += 1 }
            return tokens[index]
        }
        func integer(_ token: String?) throws(Error) -> Cardinal {
            guard let token, !token.isEmpty, token.count <= 18, token.allSatisfy({ $0.isASCII && $0.isNumber }),
                let value = UInt(token)
            else {
                throw .expectedNumber(token ?? "")
            }
            return Cardinal(value)
        }
        var condition: [[CLDR.Plural.Relation]] = []
        guard !tokens.isEmpty else {
            self.init(category, source: String(source), condition: [])
            return
        }
        var conjunction: [CLDR.Plural.Relation] = []
        while true {
            guard let name = next() else {
                throw .unexpectedEnd
            }
            guard name.count == 1, let first = name.first, let operand = CLDR.Plural.Operand(rawValue: first) else {
                throw .expectedOperand(name)
            }
            var modulus: Cardinal?
            var token = next()
            if token == "%" {
                modulus = try integer(next())
                token = next()
            }
            let comparison: CLDR.Plural.Relation.Comparison
            switch token {
            case "=": comparison = .in
            case "!=": comparison = .notIn
            default: throw .expectedComparison(token ?? "")
            }
            var ranges: [ClosedRange<Cardinal>] = []
            repeat {
                guard let item = next() else {
                    throw .unexpectedEnd
                }
                let bounds = item.split(separator: ".", omittingEmptySubsequences: false)
                if bounds.count == 3, bounds[1].isEmpty {
                    let lower = try integer(String(bounds[0]))
                    let upper = try integer(String(bounds[2]))
                    guard lower <= upper else {
                        throw .invalidRange(item)
                    }
                    ranges.append(lower...upper)
                } else {
                    let value = try integer(item)
                    ranges.append(value...value)
                }
            } while index < tokens.count && tokens[index] == "," && next() != nil
            conjunction.append(CLDR.Plural.Relation(operand, modulus: modulus, comparison, ranges))
            guard let joiner = next() else {
                break
            }
            switch joiner {
            case "and":
                continue

            case "or":
                condition.append(conjunction)
                conjunction = []

            default:
                throw .unexpected(joiner)
            }
        }
        condition.append(conjunction)
        self.init(category, source: String(source), condition: condition)
    }
}
