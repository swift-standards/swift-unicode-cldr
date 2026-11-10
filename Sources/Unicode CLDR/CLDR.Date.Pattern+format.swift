import ISO_8601

extension CLDR.Date.Pattern {

    func format(_ date: ISO_8601.CalendarDate, _ record: CLDR.Record) -> String {
        let number = record.number
        var result = ""
        for element in elements {
            switch element {
            case .literal(let text):
                result += text

            case .field(.era, let width):
                let names = record.eras(width == 4 ? .wide : width == 5 ? .narrow : .abbreviated)
                result += names[date.year >= 1 ? 1 : 0]

            case .field(.year, let width):
                let year = date.year >= 1 ? date.year : 1 - date.year
                if width == 2 {
                    result += number.localized(year % 100, minimumDigits: 2)
                } else {
                    result += number.localized(year, minimumDigits: width)
                }

            case .field(let field, let width) where field == .month || field == .standAloneMonth:
                let context: CLDR.Context = field == .month ? .format : .standAlone
                switch width {
                case 1, 2: result += number.localized(date.month, minimumDigits: width)
                case 3: result += record.months(.abbreviated, context)[CLDR.Month(date)]
                case 4: result += record.months(.wide, context)[CLDR.Month(date)]
                default: result += record.months(.narrow, context)[CLDR.Month(date)]
                }

            case .field(.day, let width):
                result += number.localized(date.day, minimumDigits: width)

            case .field(let field, let width):
                let context: CLDR.Context = field == .weekday ? .format : .standAlone
                switch width {
                case 4: result += record.days(.wide, context)[date.weekday]
                case 5: result += record.days(.narrow, context)[date.weekday]
                case 6: result += record.days(.short, context)[date.weekday]
                default: result += record.days(.abbreviated, context)[date.weekday]
                }
            }
        }
        return result
    }
}
