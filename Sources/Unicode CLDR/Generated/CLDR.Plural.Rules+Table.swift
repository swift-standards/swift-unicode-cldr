import Cardinal

extension CLDR.Plural.Rules {

    static func cardinal(_ key: String) -> CLDR.Plural.Rules? {
        switch key {
        case "af": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ak": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "am":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "an": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ar":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(.few, source: "n % 100 = 3..10", condition: [[CLDR.Plural.Relation(.n, modulus: 100, .in, [3...10])]]),
                CLDR.Plural.Rule(.many, source: "n % 100 = 11..99", condition: [[CLDR.Plural.Relation(.n, modulus: 100, .in, [11...99])]]),
            ])

        case "ars":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(.few, source: "n % 100 = 3..10", condition: [[CLDR.Plural.Relation(.n, modulus: 100, .in, [3...10])]]),
                CLDR.Plural.Rule(.many, source: "n % 100 = 11..99", condition: [[CLDR.Plural.Relation(.n, modulus: 100, .in, [11...99])]]),
            ])

        case "as":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "asa": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ast":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "az": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "bal": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "be":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 2..4 and n % 100 != 12..14",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [12...14])]]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "n % 10 = 0 or n % 10 = 5..9 or n % 100 = 11..14",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: 10, .in, [5...9])], [CLDR.Plural.Relation(.n, modulus: 100, .in, [11...14])]]
                ),
            ])

        case "bem": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "bez": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "bg": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "bho": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "blo":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
            ])

        case "bm": CLDR.Plural.Rules([])

        case "bn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "bo": CLDR.Plural.Rules([])

        case "br":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11,71,91",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11, 71...71, 91...91])]]
                ),
                CLDR.Plural.Rule(
                    .two,
                    source: "n % 10 = 2 and n % 100 != 12,72,92",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [2...2]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [12...12, 72...72, 92...92])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 3..4,9 and n % 100 != 10..19,70..79,90..99",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [3...4, 9...9]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [10...19, 70...79, 90...99])]]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "n != 0 and n % 1000000 = 0",
                    condition: [[CLDR.Plural.Relation(.n, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.n, modulus: 1_000_000, .in, [0...0])]]
                ),
            ])

        case "brx": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "bs":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11 or f % 10 = 1 and f % 100 != 11",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14 or f % 10 = 2..4 and f % 100 != 12..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [12...14])],
                    ]
                ),
            ])

        case "ca":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "ce": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ceb":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i = 1,2,3 or v = 0 and i % 10 != 4,6,9 or v != 0 and f % 10 != 4,6,9",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1, 2...2, 3...3])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .notIn, [4...4, 6...6, 9...9])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.f, modulus: 10, .notIn, [4...4, 6...6, 9...9])],
                    ]
                )
            ])

        case "cgg": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "chr": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ckb": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "cs":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.few, source: "i = 2..4 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [2...4]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.many, source: "v != 0", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])]]),
            ])

        case "csw": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "cv":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
            ])

        case "cy":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(.few, source: "n = 3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [3...3])]]),
                CLDR.Plural.Rule(.many, source: "n = 6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [6...6])]]),
            ])

        case "da":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n = 1 or t != 0 and i = 0,1",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])],
                        [CLDR.Plural.Relation(.t, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0, 1...1])],
                    ]
                )
            ])

        case "de":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "doi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "dsb":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 100 = 1 or f % 100 = 1",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [1...1])], [CLDR.Plural.Relation(.f, modulus: 100, .in, [1...1])]]
                ),
                CLDR.Plural.Rule(
                    .two,
                    source: "v = 0 and i % 100 = 2 or f % 100 = 2",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [2...2])], [CLDR.Plural.Relation(.f, modulus: 100, .in, [2...2])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 100 = 3..4 or f % 100 = 3..4",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [3...4])], [CLDR.Plural.Relation(.f, modulus: 100, .in, [3...4])]]
                ),
            ])

        case "dv": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "dz": CLDR.Plural.Rules([])

        case "ee": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "el": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "en":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "eo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "es":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "et":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "eu": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "fa":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "ff": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "i = 0,1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0, 1...1])]])])

        case "fi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "fil":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i = 1,2,3 or v = 0 and i % 10 != 4,6,9 or v != 0 and f % 10 != 4,6,9",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1, 2...2, 3...3])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .notIn, [4...4, 6...6, 9...9])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.f, modulus: 10, .notIn, [4...4, 6...6, 9...9])],
                    ]
                )
            ])

        case "fo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "fr":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0..1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...1])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "fur": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "fy":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "ga":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(.few, source: "n = 3..6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [3...6])]]),
                CLDR.Plural.Rule(.many, source: "n = 7..10", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [7...10])]]),
            ])

        case "gd":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1,11", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 11...11])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,12", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 12...12])]]),
                CLDR.Plural.Rule(.few, source: "n = 3..10,13..19", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [3...10, 13...19])]]),
            ])

        case "gl":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "gsw": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "gu":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "guw": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "gv":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "v = 0 and i % 10 = 1", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "v = 0 and i % 10 = 2", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...2])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 100 = 0,20,40,60,80",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [0...0, 20...20, 40...40, 60...60, 80...80])]]
                ), CLDR.Plural.Rule(.many, source: "v != 0", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])]]),
            ])

        case "ha": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "haw": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "he":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "i = 1 and v = 0 or i = 0 and v != 0",
                    condition: [
                        [CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])],
                        [CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])],
                    ]
                ), CLDR.Plural.Rule(.two, source: "i = 2 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [2...2]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
            ])

        case "hi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "hnj": CLDR.Plural.Rules([])

        case "hr":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11 or f % 10 = 1 and f % 100 != 11",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14 or f % 10 = 2..4 and f % 100 != 12..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [12...14])],
                    ]
                ),
            ])

        case "hsb":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 100 = 1 or f % 100 = 1",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [1...1])], [CLDR.Plural.Relation(.f, modulus: 100, .in, [1...1])]]
                ),
                CLDR.Plural.Rule(
                    .two,
                    source: "v = 0 and i % 100 = 2 or f % 100 = 2",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [2...2])], [CLDR.Plural.Relation(.f, modulus: 100, .in, [2...2])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 100 = 3..4 or f % 100 = 3..4",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [3...4])], [CLDR.Plural.Relation(.f, modulus: 100, .in, [3...4])]]
                ),
            ])

        case "hu": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "hy": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "i = 0,1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0, 1...1])]])])

        case "ia":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "id": CLDR.Plural.Rules([])

        case "ie":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "ig": CLDR.Plural.Rules([])

        case "ii": CLDR.Plural.Rules([])

        case "io":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "is":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "t = 0 and i % 10 = 1 and i % 100 != 11 or t % 10 = 1 and t % 100 != 11",
                    condition: [
                        [CLDR.Plural.Relation(.t, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.t, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.t, modulus: 100, .notIn, [11...11])],
                    ]
                )
            ])

        case "it":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "iu":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "ja": CLDR.Plural.Rules([])

        case "jbo": CLDR.Plural.Rules([])

        case "jgo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "jmc": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "jv": CLDR.Plural.Rules([])

        case "jw": CLDR.Plural.Rules([])

        case "ka": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "kab": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "i = 0,1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0, 1...1])]])])

        case "kaj": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "kcg": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "kde": CLDR.Plural.Rules([])

        case "kea": CLDR.Plural.Rules([])

        case "kk": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "kkj": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "kl": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "km": CLDR.Plural.Rules([])

        case "kn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "ko": CLDR.Plural.Rules([])

        case "kok":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "kok-Latn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "ks": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ksb": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ksh":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
            ])

        case "ku": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "kw":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(
                    .two,
                    source: "n % 100 = 2,22,42,62,82 or n % 1000 = 0 and n % 100000 = 1000..20000,40000,60000,80000 or n != 0 and n % 1000000 = 100000",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: 100, .in, [2...2, 22...22, 42...42, 62...62, 82...82])],
                        [CLDR.Plural.Relation(.n, modulus: 1000, .in, [0...0]), CLDR.Plural.Relation(.n, modulus: 100_000, .in, [1000...20_000, 40_000...40_000, 60_000...60_000, 80_000...80_000])],
                        [CLDR.Plural.Relation(.n, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.n, modulus: 1_000_000, .in, [100_000...100_000])],
                    ]
                ), CLDR.Plural.Rule(.few, source: "n % 100 = 3,23,43,63,83", condition: [[CLDR.Plural.Relation(.n, modulus: 100, .in, [3...3, 23...23, 43...43, 63...63, 83...83])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "n != 1 and n % 100 = 1,21,41,61,81",
                    condition: [[CLDR.Plural.Relation(.n, modulus: nil, .notIn, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .in, [1...1, 21...21, 41...41, 61...61, 81...81])]]
                ),
            ])

        case "ky": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "lag":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .one,
                    source: "i = 0,1 and n != 0",
                    condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0, 1...1]), CLDR.Plural.Relation(.n, modulus: nil, .notIn, [0...0])]]
                ),
            ])

        case "lb": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "lg": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "lij":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "lkt": CLDR.Plural.Rules([])

        case "lld":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "ln": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "lo": CLDR.Plural.Rules([])

        case "lt":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11..19",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...19])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 2..9 and n % 100 != 11..19",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [2...9]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...19])]]
                ), CLDR.Plural.Rule(.many, source: "f != 0", condition: [[CLDR.Plural.Relation(.f, modulus: nil, .notIn, [0...0])]]),
            ])

        case "lv":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .zero,
                    source: "n % 10 = 0 or n % 100 = 11..19 or v = 2 and f % 100 = 11..19",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: 10, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: 100, .in, [11...19])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [2...2]), CLDR.Plural.Relation(.f, modulus: 100, .in, [11...19])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11 or v = 2 and f % 10 = 1 and f % 100 != 11 or v != 2 and f % 10 = 1",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [2...2]), CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [2...2]), CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1])],
                    ]
                ),
            ])

        case "mas": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "mg": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "mgo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "mk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11 or f % 10 = 1 and f % 100 != 11",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                    ]
                )
            ])

        case "ml": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "mn": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "mo":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "v != 0 or n = 0 or n != 1 and n % 100 = 1..19",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])],
                        [CLDR.Plural.Relation(.n, modulus: nil, .notIn, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .in, [1...19])],
                    ]
                ),
            ])

        case "mr": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ms": CLDR.Plural.Rules([])

        case "mt":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "n = 0 or n % 100 = 3..10",
                    condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: 100, .in, [3...10])]]
                ), CLDR.Plural.Rule(.many, source: "n % 100 = 11..19", condition: [[CLDR.Plural.Relation(.n, modulus: 100, .in, [11...19])]]),
            ])

        case "my": CLDR.Plural.Rules([])

        case "nah": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "naq":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "nb": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "nd": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ne": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "nl":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "nn": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "nnh": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "no": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "nqo": CLDR.Plural.Rules([])

        case "nr": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "nso": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "ny": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "nyn": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "om": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "or": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "os": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "osa": CLDR.Plural.Rules([])

        case "pa": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "pap": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "pcm":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "pl":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])]]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "v = 0 and i != 1 and i % 10 = 0..1 or v = 0 and i % 10 = 5..9 or v = 0 and i % 100 = 12..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [1...1]), CLDR.Plural.Relation(.i, modulus: 10, .in, [0...1])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [5...9])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [12...14])],
                    ]
                ),
            ])

        case "prg":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .zero,
                    source: "n % 10 = 0 or n % 100 = 11..19 or v = 2 and f % 100 = 11..19",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: 10, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: 100, .in, [11...19])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [2...2]), CLDR.Plural.Relation(.f, modulus: 100, .in, [11...19])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11 or v = 2 and f % 10 = 1 and f % 100 != 11 or v != 2 and f % 10 = 1",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [2...2]), CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [2...2]), CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1])],
                    ]
                ),
            ])

        case "ps": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "pt":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0..1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...1])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "pt-PT":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "rm": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ro":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "v != 0 or n = 0 or n != 1 and n % 100 = 1..19",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0])],
                        [CLDR.Plural.Relation(.n, modulus: nil, .notIn, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .in, [1...19])],
                    ]
                ),
            ])

        case "rof": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ru":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])]]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "v = 0 and i % 10 = 0 or v = 0 and i % 10 = 5..9 or v = 0 and i % 100 = 11..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [0...0])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [5...9])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [11...14])],
                    ]
                ),
            ])

        case "rwk": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "sah": CLDR.Plural.Rules([])

        case "saq": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "sat":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "sc":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "scn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "sd": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "sdh": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "se":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "seh": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ses": CLDR.Plural.Rules([])

        case "sg": CLDR.Plural.Rules([])

        case "sgs":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11])]]
                ), CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "n != 2 and n % 10 = 2..9 and n % 100 != 11..19",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: nil, .notIn, [2...2]), CLDR.Plural.Relation(.n, modulus: 10, .in, [2...9]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...19])]
                    ]
                ), CLDR.Plural.Rule(.many, source: "f != 0", condition: [[CLDR.Plural.Relation(.f, modulus: nil, .notIn, [0...0])]]),
            ])

        case "sh":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11 or f % 10 = 1 and f % 100 != 11",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14 or f % 10 = 2..4 and f % 100 != 12..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [12...14])],
                    ]
                ),
            ])

        case "shi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.few, source: "n = 2..10", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...10])]]),
            ])

        case "si":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n = 0,1 or i = 0 and f = 1",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0, 1...1])], [CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.f, modulus: nil, .in, [1...1])],
                    ]
                )
            ])

        case "sk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.few, source: "i = 2..4 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [2...4]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.many, source: "v != 0", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])]]),
            ])

        case "sl":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "v = 0 and i % 100 = 1", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "v = 0 and i % 100 = 2", condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [2...2])]]),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 100 = 3..4 or v != 0",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [3...4])], [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0])],
                    ]
                ),
            ])

        case "sma":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "smi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "smj":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "smn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "sms":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
            ])

        case "sn": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "so": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "sq": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "sr":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11 or f % 10 = 1 and f % 100 != 11",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [11...11])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14 or f % 10 = 2..4 and f % 100 != 12..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])],
                        [CLDR.Plural.Relation(.f, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.f, modulus: 100, .notIn, [12...14])],
                    ]
                ),
            ])

        case "ss": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ssy": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "st": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "su": CLDR.Plural.Rules([])

        case "sv":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "sw":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "syr": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ta": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "te": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "teo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "tg":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "th": CLDR.Plural.Rules([])

        case "ti": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "tig": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "tk": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "tl":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i = 1,2,3 or v = 0 and i % 10 != 4,6,9 or v != 0 and f % 10 != 4,6,9",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1, 2...2, 3...3])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .notIn, [4...4, 6...6, 9...9])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.f, modulus: 10, .notIn, [4...4, 6...6, 9...9])],
                    ]
                )
            ])

        case "tn": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "to": CLDR.Plural.Rules([])

        case "tpi": CLDR.Plural.Rules([])

        case "tr": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ts": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "tzm":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 0..1 or n = 11..99", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [11...99])]])
            ])

        case "ug": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "uk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "v = 0 and i % 10 = 1 and i % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "v = 0 and i % 10 = 2..4 and i % 100 != 12..14",
                    condition: [[CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [2...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...14])]]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "v = 0 and i % 10 = 0 or v = 0 and i % 10 = 5..9 or v = 0 and i % 100 = 11..14",
                    condition: [
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [0...0])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 10, .in, [5...9])],
                        [CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: 100, .in, [11...14])],
                    ]
                ),
            ])

        case "und": CLDR.Plural.Rules([])

        case "ur":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "uz": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ve": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "vec":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "e = 0 and i != 0 and i % 1000000 = 0 and v = 0 or e != 0..5",
                    condition: [
                        [
                            CLDR.Plural.Relation(.e, modulus: nil, .in, [0...0]), CLDR.Plural.Relation(.i, modulus: nil, .notIn, [0...0]), CLDR.Plural.Relation(.i, modulus: 1_000_000, .in, [0...0]),
                            CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0]),
                        ], [CLDR.Plural.Relation(.e, modulus: nil, .notIn, [0...5])],
                    ]
                ),
            ])

        case "vi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        case "vo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "vun": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "wa": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 0..1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...1])]])])

        case "wae": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "wo": CLDR.Plural.Rules([])

        case "xh": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "xog": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "yi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1 and v = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1]), CLDR.Plural.Relation(.v, modulus: nil, .in, [0...0])]])
            ])

        case "yo": CLDR.Plural.Rules([])

        case "yue": CLDR.Plural.Rules([])

        case "zh": CLDR.Plural.Rules([])

        case "zu":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 0 or n = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])
            ])

        default: nil
        }
    }

    static func ordinal(_ key: String) -> CLDR.Plural.Rules? {
        switch key {
        case "af": CLDR.Plural.Rules([CLDR.Plural.Rule(.few, source: "i % 100 = 2..19", condition: [[CLDR.Plural.Relation(.i, modulus: 100, .in, [2...19])]])])

        case "am": CLDR.Plural.Rules([])

        case "an": CLDR.Plural.Rules([])

        case "ar": CLDR.Plural.Rules([])

        case "as":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1,5,7,8,9,10", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 5...5, 7...7, 8...8, 9...9, 10...10])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
                CLDR.Plural.Rule(.many, source: "n = 6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [6...6])]]),
            ])

        case "ast": CLDR.Plural.Rules([])

        case "az":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "i % 10 = 1,2,5,7,8 or i % 100 = 20,50,70,80",
                    condition: [
                        [CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1, 2...2, 5...5, 7...7, 8...8])], [CLDR.Plural.Relation(.i, modulus: 100, .in, [20...20, 50...50, 70...70, 80...80])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "i % 10 = 3,4 or i % 1000 = 100,200,300,400,500,600,700,800,900",
                    condition: [
                        [CLDR.Plural.Relation(.i, modulus: 10, .in, [3...3, 4...4])],
                        [CLDR.Plural.Relation(.i, modulus: 1000, .in, [100...100, 200...200, 300...300, 400...400, 500...500, 600...600, 700...700, 800...800, 900...900])],
                    ]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "i = 0 or i % 10 = 6 or i % 100 = 40,60,90",
                    condition: [
                        [CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.i, modulus: 10, .in, [6...6])],
                        [CLDR.Plural.Relation(.i, modulus: 100, .in, [40...40, 60...60, 90...90])],
                    ]
                ),
            ])

        case "bal": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "be":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 2,3 and n % 100 != 12,13",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [2...2, 3...3]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [12...12, 13...13])]]
                )
            ])

        case "bg":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "i % 10 = 1 and i % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])]]
                ),
                CLDR.Plural.Rule(
                    .two,
                    source: "i % 10 = 2 and i % 100 != 12",
                    condition: [[CLDR.Plural.Relation(.i, modulus: 10, .in, [2...2]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...12])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "i % 10 = 3,4 and i % 100 != 13,14",
                    condition: [[CLDR.Plural.Relation(.i, modulus: 10, .in, [3...3, 4...4]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [13...13, 14...14])]]
                ),
            ])

        case "blo":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "i = 0", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])]]),
                CLDR.Plural.Rule(.one, source: "i = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.few, source: "i = 2,3,4,5,6", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [2...2, 3...3, 4...4, 5...5, 6...6])]]),
            ])

        case "bn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1,5,7,8,9,10", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 5...5, 7...7, 8...8, 9...9, 10...10])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
                CLDR.Plural.Rule(.many, source: "n = 6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [6...6])]]),
            ])

        case "bs": CLDR.Plural.Rules([])

        case "ca":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 3...3])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
            ])

        case "ce": CLDR.Plural.Rules([])

        case "cs": CLDR.Plural.Rules([])

        case "cv": CLDR.Plural.Rules([])

        case "cy":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.zero, source: "n = 0,7,8,9", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [0...0, 7...7, 8...8, 9...9])]]),
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2])]]),
                CLDR.Plural.Rule(.few, source: "n = 3,4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [3...3, 4...4])]]),
                CLDR.Plural.Rule(.many, source: "n = 5,6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [5...5, 6...6])]]),
            ])

        case "da": CLDR.Plural.Rules([])

        case "de": CLDR.Plural.Rules([])

        case "dsb": CLDR.Plural.Rules([])

        case "el": CLDR.Plural.Rules([])

        case "en":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1 and n % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11])]]
                ),
                CLDR.Plural.Rule(
                    .two,
                    source: "n % 10 = 2 and n % 100 != 12",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [2...2]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [12...12])]]
                ),
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 3 and n % 100 != 13",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [3...3]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [13...13])]]
                ),
            ])

        case "es":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1,3 and n % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1, 3...3]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11])]]
                )
            ])

        case "et": CLDR.Plural.Rules([])

        case "eu": CLDR.Plural.Rules([])

        case "fa": CLDR.Plural.Rules([])

        case "fi": CLDR.Plural.Rules([])

        case "fil": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "fr": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "fy": CLDR.Plural.Rules([])

        case "ga": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "gd":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1,11", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 11...11])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,12", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 12...12])]]),
                CLDR.Plural.Rule(.few, source: "n = 3,13", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [3...3, 13...13])]]),
            ])

        case "gl": CLDR.Plural.Rules([])

        case "gsw": CLDR.Plural.Rules([])

        case "gu":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
                CLDR.Plural.Rule(.many, source: "n = 6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [6...6])]]),
            ])

        case "he": CLDR.Plural.Rules([])

        case "hi":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
                CLDR.Plural.Rule(.many, source: "n = 6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [6...6])]]),
            ])

        case "hr": CLDR.Plural.Rules([])

        case "hsb": CLDR.Plural.Rules([])

        case "hu": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1,5", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 5...5])]])])

        case "hy": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ia": CLDR.Plural.Rules([])

        case "id": CLDR.Plural.Rules([])

        case "ie": CLDR.Plural.Rules([])

        case "is": CLDR.Plural.Rules([])

        case "it": CLDR.Plural.Rules([CLDR.Plural.Rule(.many, source: "n = 11,8,80,800", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [11...11, 8...8, 80...80, 800...800])]])])

        case "ja": CLDR.Plural.Rules([])

        case "ka":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "i = 1", condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "i = 0 or i % 100 = 2..20,40,60,80",
                    condition: [[CLDR.Plural.Relation(.i, modulus: nil, .in, [0...0])], [CLDR.Plural.Relation(.i, modulus: 100, .in, [2...20, 40...40, 60...60, 80...80])]]
                ),
            ])

        case "kk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .many,
                    source: "n % 10 = 6 or n % 10 = 9 or n % 10 = 0 and n != 0",
                    condition: [
                        [CLDR.Plural.Relation(.n, modulus: 10, .in, [6...6])], [CLDR.Plural.Relation(.n, modulus: 10, .in, [9...9])],
                        [CLDR.Plural.Relation(.n, modulus: 10, .in, [0...0]), CLDR.Plural.Relation(.n, modulus: nil, .notIn, [0...0])],
                    ]
                )
            ])

        case "km": CLDR.Plural.Rules([])

        case "kn": CLDR.Plural.Rules([])

        case "ko": CLDR.Plural.Rules([])

        case "kok":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
            ])

        case "kok-Latn":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
            ])

        case "kw":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n = 1..4 or n % 100 = 1..4,21..24,41..44,61..64,81..84",
                    condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...4])], [CLDR.Plural.Relation(.n, modulus: 100, .in, [1...4, 21...24, 41...44, 61...64, 81...84])]]
                ),
                CLDR.Plural.Rule(.many, source: "n = 5 or n % 100 = 5", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [5...5])], [CLDR.Plural.Relation(.n, modulus: 100, .in, [5...5])]]),
            ])

        case "ky": CLDR.Plural.Rules([])

        case "lij": CLDR.Plural.Rules([CLDR.Plural.Rule(.many, source: "n = 11,8,80..89,800..899", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [11...11, 8...8, 80...89, 800...899])]])])

        case "lld": CLDR.Plural.Rules([CLDR.Plural.Rule(.many, source: "n = 11,8,80,800", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [11...11, 8...8, 80...80, 800...800])]])])

        case "lo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "lt": CLDR.Plural.Rules([])

        case "lv": CLDR.Plural.Rules([])

        case "mk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "i % 10 = 1 and i % 100 != 11",
                    condition: [[CLDR.Plural.Relation(.i, modulus: 10, .in, [1...1]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [11...11])]]
                ),
                CLDR.Plural.Rule(
                    .two,
                    source: "i % 10 = 2 and i % 100 != 12",
                    condition: [[CLDR.Plural.Relation(.i, modulus: 10, .in, [2...2]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [12...12])]]
                ),
                CLDR.Plural.Rule(
                    .many,
                    source: "i % 10 = 7,8 and i % 100 != 17,18",
                    condition: [[CLDR.Plural.Relation(.i, modulus: 10, .in, [7...7, 8...8]), CLDR.Plural.Relation(.i, modulus: 100, .notIn, [17...17, 18...18])]]
                ),
            ])

        case "ml": CLDR.Plural.Rules([])

        case "mn": CLDR.Plural.Rules([])

        case "mo": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "mr":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
            ])

        case "ms": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "my": CLDR.Plural.Rules([])

        case "nb": CLDR.Plural.Rules([])

        case "ne": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1..4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...4])]])])

        case "nl": CLDR.Plural.Rules([])

        case "no": CLDR.Plural.Rules([])

        case "or":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1,5,7..9", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1, 5...5, 7...9])]]),
                CLDR.Plural.Rule(.two, source: "n = 2,3", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [2...2, 3...3])]]),
                CLDR.Plural.Rule(.few, source: "n = 4", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [4...4])]]),
                CLDR.Plural.Rule(.many, source: "n = 6", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [6...6])]]),
            ])

        case "pa": CLDR.Plural.Rules([])

        case "pl": CLDR.Plural.Rules([])

        case "prg": CLDR.Plural.Rules([])

        case "ps": CLDR.Plural.Rules([])

        case "pt": CLDR.Plural.Rules([])

        case "ro": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "ru": CLDR.Plural.Rules([])

        case "sc": CLDR.Plural.Rules([CLDR.Plural.Rule(.many, source: "n = 11,8,80,800", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [11...11, 8...8, 80...80, 800...800])]])])

        case "scn": CLDR.Plural.Rules([CLDR.Plural.Rule(.many, source: "n = 11,8,80..89,800..899", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [11...11, 8...8, 80...89, 800...899])]])])

        case "sd": CLDR.Plural.Rules([])

        case "sh": CLDR.Plural.Rules([])

        case "si": CLDR.Plural.Rules([])

        case "sk": CLDR.Plural.Rules([])

        case "sl": CLDR.Plural.Rules([])

        case "sq":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]]),
                CLDR.Plural.Rule(
                    .many,
                    source: "n % 10 = 4 and n % 100 != 14",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [4...4]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [14...14])]]
                ),
            ])

        case "sr": CLDR.Plural.Rules([])

        case "sv":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .one,
                    source: "n % 10 = 1,2 and n % 100 != 11,12",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [1...1, 2...2]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [11...11, 12...12])]]
                )
            ])

        case "sw": CLDR.Plural.Rules([])

        case "ta": CLDR.Plural.Rules([])

        case "te": CLDR.Plural.Rules([])

        case "tg": CLDR.Plural.Rules([])

        case "th": CLDR.Plural.Rules([])

        case "tk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 6,9 or n = 10",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [6...6, 9...9])], [CLDR.Plural.Relation(.n, modulus: nil, .in, [10...10])]]
                )
            ])

        case "tl": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "tpi": CLDR.Plural.Rules([])

        case "tr": CLDR.Plural.Rules([])

        case "uk":
            CLDR.Plural.Rules([
                CLDR.Plural.Rule(
                    .few,
                    source: "n % 10 = 3 and n % 100 != 13",
                    condition: [[CLDR.Plural.Relation(.n, modulus: 10, .in, [3...3]), CLDR.Plural.Relation(.n, modulus: 100, .notIn, [13...13])]]
                )
            ])

        case "und": CLDR.Plural.Rules([])

        case "ur": CLDR.Plural.Rules([])

        case "uz": CLDR.Plural.Rules([])

        case "vec": CLDR.Plural.Rules([CLDR.Plural.Rule(.many, source: "n = 11,8,80,800", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [11...11, 8...8, 80...80, 800...800])]])])

        case "vi": CLDR.Plural.Rules([CLDR.Plural.Rule(.one, source: "n = 1", condition: [[CLDR.Plural.Relation(.n, modulus: nil, .in, [1...1])]])])

        case "yue": CLDR.Plural.Rules([])

        case "zh": CLDR.Plural.Rules([])

        case "zu": CLDR.Plural.Rules([])

        default: nil
        }
    }
}
