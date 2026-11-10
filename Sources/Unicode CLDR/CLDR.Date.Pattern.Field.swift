extension CLDR.Date.Pattern {

    public enum Field: Sendable, Hashable, CaseIterable {
        case era
        case year
        case month
        case standAloneMonth
        case day
        case weekday
        case standAloneWeekday
    }
}

extension CLDR.Date.Pattern.Field {

    public init?(letter: Character) {
        switch letter {
        case "G": self = .era
        case "y": self = .year
        case "M": self = .month
        case "L": self = .standAloneMonth
        case "d": self = .day
        case "E": self = .weekday
        case "c": self = .standAloneWeekday
        default: return nil
        }
    }

    public var letter: Character {
        switch self {
        case .era: "G"
        case .year: "y"
        case .month: "M"
        case .standAloneMonth: "L"
        case .day: "d"
        case .weekday: "E"
        case .standAloneWeekday: "c"
        }
    }

    public var widths: ClosedRange<Int> {
        switch self {
        case .era: 1...5
        case .year: 1...Int.max
        case .month, .standAloneMonth: 1...5
        case .day: 1...2
        case .weekday: 1...6
        case .standAloneWeekday: 3...6
        }
    }
}
