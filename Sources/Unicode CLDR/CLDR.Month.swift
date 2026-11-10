public import ISO_8601

extension CLDR {

    public enum Month: Int, Sendable, Hashable, CaseIterable {
        case january = 1
        case february = 2
        case march = 3
        case april = 4
        case may = 5
        case june = 6
        case july = 7
        case august = 8
        case september = 9
        case october = 10
        case november = 11
        case december = 12
    }
}

extension CLDR.Month {

    public init(_ date: ISO_8601.CalendarDate) {
        self = Self.allCases[date.month - 1]
    }

    var offset: Int {
        self.rawValue - 1
    }
}
