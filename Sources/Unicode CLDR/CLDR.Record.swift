extension CLDR {

    struct Record: Sendable {

        let months: [Int]

        let days: [Int]

        let eras: [Int]

        let dates: Int

        let numbers: Int
    }
}

extension CLDR.Record {

    func months(_ width: CLDR.Months.Width, _ context: CLDR.Context) -> CLDR.Months {
        let offset: Int =
            switch width {
            case .abbreviated: 0
            case .narrow: 1
            case .wide: 2
            }
        let base = context == .format ? 0 : 3
        return CLDR.Months(names: Self.names[months[base + offset]])
    }

    func days(_ width: CLDR.Days.Width, _ context: CLDR.Context) -> CLDR.Days {
        let offset: Int =
            switch width {
            case .abbreviated: 0
            case .narrow: 1
            case .short: 2
            case .wide: 3
            }
        let base = context == .format ? 0 : 4
        return CLDR.Days(names: Self.names[days[base + offset]])
    }

    func eras(_ width: CLDR.Months.Width) -> [String] {
        switch width {
        case .abbreviated: Self.names[eras[0]]
        case .wide: Self.names[eras[1]]
        case .narrow: Self.names[eras[2]]
        }
    }

    func date(_ style: CLDR.Date.Style) -> CLDR.Date.Pattern {
        let patterns = Self.dates[dates]
        return switch style {
        case .full: patterns[0]
        case .long: patterns[1]
        case .medium: patterns[2]
        case .short: patterns[3]
        }
    }

    var number: CLDR.Number.Data {
        Self.numbers[numbers]
    }
}
