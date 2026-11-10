public import ISO_8601

extension CLDR {

    public struct Days: Sendable, Hashable {

        public let names: [String]

        init(names: [String]) {
            self.names = names
        }
    }
}

extension CLDR.Days {

    public subscript(weekday: ISO_8601.Weekday) -> String {
        names[weekday.gregorianNumber]
    }
}
