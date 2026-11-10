extension CLDR {

    public struct Months: Sendable, Hashable {

        public let names: [String]

        init(names: [String]) {
            self.names = names
        }
    }
}

extension CLDR.Months {

    public subscript(month: CLDR.Month) -> String {
        names[month.offset]
    }
}
