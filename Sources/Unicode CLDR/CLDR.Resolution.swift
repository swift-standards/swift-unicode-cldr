import BCP_47
import Locale_Standard

extension CLDR {

    struct Resolution: Sendable {

        let chain: [String]
    }
}

extension CLDR.Resolution {

    init(_ locale: Locale) {
        self.init(identifier: locale.description)
    }

    init(_ tag: BCP47.LanguageTag) {
        self.init(identifier: tag.value)
    }

    init(identifier: String) {
        let subtags = identifier.split(separator: "-").map(String.init)
        var language = subtags.first.map { $0.lowercased() } ?? "und"
        var script: String?
        var region: String?
        var variants: [String] = []
        for subtag in subtags.dropFirst() {
            if subtag.count == 1 {
                break
            }
            if script == nil, region == nil, variants.isEmpty, subtag.count == 4,
                subtag.allSatisfy({ $0.isASCII && $0.isLetter })
            {
                script = subtag.prefix(1).uppercased() + subtag.dropFirst().lowercased()
            } else if region == nil, variants.isEmpty,
                (subtag.count == 2 && subtag.allSatisfy({ $0.isASCII && $0.isLetter }))
                    || (subtag.count == 3 && subtag.allSatisfy({ $0.isASCII && $0.isNumber }))
            {
                region = subtag.uppercased()
            } else {
                variants.append(subtag.lowercased())
            }
        }
        language = Self.alias(language) ?? language
        let likely = region.flatMap { Self.script(language + "-" + $0) } ?? Self.script(language)
        if script == nil {
            script = likely
        }
        if script == Self.script(language) {
            script = nil
        }
        var identifier = ([language] + [script, region].compactMap { $0 } + variants).joined(separator: "-")
        var chain: [String] = []
        while identifier != "und" {
            chain.append(identifier)
            identifier = Self.parent(identifier) ?? Self.truncated(identifier)
        }
        chain.append("und")
        self.chain = chain
    }

    static func truncated(_ identifier: String) -> String {
        guard let hyphen = identifier.lastIndex(of: "-") else {
            return "und"
        }
        return String(identifier[..<hyphen])
    }
}

extension CLDR.Resolution {

    var identifier: String {
        chain.first { CLDR.Record.table($0) != nil } ?? "und"
    }

    var record: CLDR.Record {
        for identifier in chain {
            if let record = CLDR.Record.table(identifier) {
                return record
            }
        }
        return CLDR.Record.root
    }

    func rules(_ kind: CLDR.Plural.Kind) -> CLDR.Plural.Rules {
        for identifier in chain {
            let rules: CLDR.Plural.Rules? =
                switch kind {
                case .cardinal: CLDR.Plural.Rules.cardinal(identifier)
                case .ordinal: CLDR.Plural.Rules.ordinal(identifier)
                }
            if let rules {
                return rules
            }
        }
        return CLDR.Plural.Rules([])
    }
}
