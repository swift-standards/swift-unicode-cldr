extension CLDR.Record {

    static let dates: [[CLDR.Date.Pattern]] = [
        [
            CLDR.Date.Pattern(text: "EEEE dd MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEE, d, MMMM, y", elements: [.field(.weekday, 3), .literal(", "), .field(.day, 1), .literal(", "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d, MMMM, y", elements: [.field(.day, 1), .literal(", "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d, MMM, y", elements: [.field(.day, 1), .literal(", "), .field(.month, 3), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE، d MMMM y", elements: [.field(.weekday, 4), .literal("، "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd\u{200F}/MM\u{200F}/y", elements: [.field(.day, 2), .literal("\u{200F}/"), .field(.month, 2), .literal("\u{200F}/"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d\u{200F}/M\u{200F}/y", elements: [.field(.day, 1), .literal("\u{200F}/"), .field(.month, 1), .literal("\u{200F}/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "y MMMM d, EEEE", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "d MMMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y MMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "d-M-y", elements: [.field(.day, 1), .literal("-"), .field(.month, 1), .literal("-"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d MMMM y\u{202F}'г'.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]
            ), CLDR.Date.Pattern(text: "d MMMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d MMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d.MM.yy", elements: [.field(.day, 1), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d MMMM y\u{202F}'г'.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]
            ), CLDR.Date.Pattern(text: "d MMMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d.MM.y\u{202F}'г'.", elements: [.field(.day, 1), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d.MM.yy\u{202F}'г'.", elements: [.field(.day, 1), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2), .literal("\u{202F}г.")]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM, y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d. MMMM y.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]
            ), CLDR.Date.Pattern(text: "d. MMMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. MMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. M. y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1), .literal(".")]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM 'del' y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" del "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM 'del' y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" del "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, MMMM d, y", elements: [.field(.weekday, 4), .literal(", "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMMM d, y", elements: [.field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMM d, y", elements: [.field(.month, 3), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "M/d/yy", elements: [.field(.month, 1), .literal("/"), .field(.day, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d. MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. M. y", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y, MMMM, d, EEEE", elements: [.field(.year, 1), .literal(", "), .field(.month, 4), .literal(", "), .field(.day, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y, MMMM, d", elements: [.field(.year, 1), .literal(", "), .field(.month, 4), .literal(", "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y, MMM, d", elements: [.field(.year, 1), .literal(", "), .field(.month, 3), .literal(", "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y.MM.dd", elements: [.field(.year, 1), .literal("."), .field(.month, 2), .literal("."), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE 'den' d. MMMM y", elements: [.field(.weekday, 4), .literal(" den "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.y", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d. MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.y", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d. MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.yy", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MMM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 3), .literal("-"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, MMMM d, y", elements: [.field(.weekday, 4), .literal(", "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMMM d, y", elements: [.field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMM d, y", elements: [.field(.month, 3), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.y", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, MMMM d, y", elements: [.field(.weekday, 4), .literal(", "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMMM d, y", elements: [.field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMM d, y", elements: [.field(.month, 3), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y/MM/dd", elements: [.field(.year, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 2), .literal("-"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d-M-yy", elements: [.field(.day, 1), .literal("-"), .field(.month, 1), .literal("-"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MMM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 3), .literal("-"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y/MM/dd", elements: [.field(.year, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM,y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(","), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM 'de' y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 2), .literal("-"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MM-yy", elements: [.field(.day, 2), .literal("-"), .field(.month, 2), .literal("-"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE dd 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(" "), .field(.day, 2), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "dd 'de' MMMM 'de' y", elements: [.field(.day, 2), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MM/dd/y", elements: [.field(.month, 2), .literal("/"), .field(.day, 2), .literal("/"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MM/dd/yy", elements: [.field(.month, 2), .literal("/"), .field(.day, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d. MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "y('e')'ko' MMMM'ren' d('a'), EEEE",
                elements: [.field(.year, 1), .literal("(e)ko "), .field(.month, 4), .literal("ren "), .field(.day, 1), .literal("(a), "), .field(.weekday, 4)]
            ), CLDR.Date.Pattern(text: "y('e')'ko' MMMM'ren' d('a')", elements: [.field(.year, 1), .literal("(e)ko "), .field(.month, 4), .literal("ren "), .field(.day, 1), .literal("(a)")]),
            CLDR.Date.Pattern(text: "y('e')'ko' MMM d('a')", elements: [.field(.year, 1), .literal("(e)ko "), .field(.month, 3), .literal(" "), .field(.day, 1), .literal("(a)")]),
            CLDR.Date.Pattern(text: "yy/M/d", elements: [.field(.year, 2), .literal("/"), .field(.month, 1), .literal("/"), .field(.day, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y/M/d", elements: [.field(.year, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.day, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "cccc d. MMMM y", elements: [.field(.standAloneWeekday, 4), .literal(" "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d'mh' MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal("mh "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d'mh' MMMM y", elements: [.field(.day, 1), .literal("mh "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d'mh' MMM y", elements: [.field(.day, 1), .literal("mh "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d 'de' MMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 3), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM, y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d בMMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" ב"), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d בMMMM y", elements: [.field(.day, 1), .literal(" ב"), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d בMMM y", elements: [.field(.day, 1), .literal(" ב"), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd MMM, y", elements: [.field(.day, 2), .literal(" "), .field(.month, 3), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d. MMMM y.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]
            ), CLDR.Date.Pattern(text: "d. MMMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. MMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "dd. MM. y.", elements: [.field(.day, 2), .literal(". "), .field(.month, 2), .literal(". "), .field(.year, 1), .literal(".")]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d. MMMM y.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]
            ), CLDR.Date.Pattern(text: "d. MMMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. MMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. M. yy.", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 2), .literal(".")]),
        ],
        [
            CLDR.Date.Pattern(text: "y. MMMM d., EEEE", elements: [.field(.year, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal("., "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y. MMMM d.", elements: [.field(.year, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "y. MMM d.", elements: [.field(.year, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.day, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "y. MM. dd.", elements: [.field(.year, 1), .literal(". "), .field(.month, 2), .literal(". "), .field(.day, 2), .literal(".")]),
        ],
        [
            CLDR.Date.Pattern(text: "y թ. MMMM d, EEEE", elements: [.field(.year, 1), .literal(" թ. "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y թ. MMMM d", elements: [.field(.year, 1), .literal(" թ. "), .field(.month, 4), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y թ. MMM d", elements: [.field(.year, 1), .literal(" թ. "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d. MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y年M月d日EEEE", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日"), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y/MM/dd", elements: [.field(.year, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.day, 2)]),
            CLDR.Date.Pattern(text: "y/MM/dd", elements: [.field(.year, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 2), .literal("-"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM, y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM. y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(". "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "y\u{202F}'ж'. d MMMM, EEEE",
                elements: [.field(.year, 1), .literal("\u{202F}ж. "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.weekday, 4)]
            ), CLDR.Date.Pattern(text: "y\u{202F}'ж'. d MMMM", elements: [.field(.year, 1), .literal("\u{202F}ж. "), .field(.day, 1), .literal(" "), .field(.month, 4)]),
            CLDR.Date.Pattern(text: "y\u{202F}'ж'. dd MMM", elements: [.field(.year, 1), .literal("\u{202F}ж. "), .field(.day, 2), .literal(" "), .field(.month, 3)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y، d-MMMM، EEEE", elements: [.field(.year, 1), .literal("، "), .field(.day, 1), .literal("-"), .field(.month, 4), .literal("، "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y، d-MMMM", elements: [.field(.year, 1), .literal("، "), .field(.day, 1), .literal("-"), .field(.month, 4)]),
            CLDR.Date.Pattern(text: "y، d-MMM", elements: [.field(.year, 1), .literal("، "), .field(.day, 1), .literal("-"), .field(.month, 3)]),
            CLDR.Date.Pattern(text: "dd-MM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 2), .literal("-"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, MMMM d, y", elements: [.field(.weekday, 4), .literal(", "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMMM d, y", elements: [.field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMM d, y", elements: [.field(.month, 3), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y년 MMMM d일 EEEE", elements: [.field(.year, 1), .literal("년 "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal("일 "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y년 MMMM d일", elements: [.field(.year, 1), .literal("년 "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal("일")]),
            CLDR.Date.Pattern(text: "y. M. d.", elements: [.field(.year, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.day, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "yy. M. d.", elements: [.field(.year, 2), .literal(". "), .field(.month, 1), .literal(". "), .field(.day, 1), .literal(".")]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d-MMM-y", elements: [.field(.day, 1), .literal("-"), .field(.month, 3), .literal("-"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d-M-yy", elements: [.field(.day, 1), .literal("-"), .field(.month, 1), .literal("-"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y-'ж'., d-MMMM, EEEE", elements: [.field(.year, 1), .literal("-ж., "), .field(.day, 1), .literal("-"), .field(.month, 4), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y-'ж'., d-MMMM", elements: [.field(.year, 1), .literal("-ж., "), .field(.day, 1), .literal("-"), .field(.month, 4)]),
            CLDR.Date.Pattern(text: "y-'ж'., d-MMM", elements: [.field(.year, 1), .literal("-ж., "), .field(.day, 1), .literal("-"), .field(.month, 3)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "y 'm'. MMMM d 'd'., EEEE",
                elements: [.field(.year, 1), .literal(" m. "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(" d., "), .field(.weekday, 4)]
            ), CLDR.Date.Pattern(text: "y 'm'. MMMM d 'd'.", elements: [.field(.year, 1), .literal(" m. "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(" d.")]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, y. 'gada' d. MMMM",
                elements: [.field(.weekday, 4), .literal(", "), .field(.year, 1), .literal(". gada "), .field(.day, 1), .literal(". "), .field(.month, 4)]
            ), CLDR.Date.Pattern(text: "y. 'gada' d. MMMM", elements: [.field(.year, 1), .literal(". gada "), .field(.day, 1), .literal(". "), .field(.month, 4)]),
            CLDR.Date.Pattern(text: "y. 'gada' d. MMM", elements: [.field(.year, 1), .literal(". gada "), .field(.day, 1), .literal(". "), .field(.month, 3)]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d MMMM y\u{202F}'г'.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]
            ), CLDR.Date.Pattern(text: "d MMMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d MMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d.M.y\u{202F}'г'.", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1), .literal("\u{202F}г.")]),
        ],
        [
            CLDR.Date.Pattern(text: "y MMMM d, EEEE", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y MMMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y MMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "y\u{202F}'оны' MMMM'ын' d, EEEE 'гараг'",
                elements: [.field(.year, 1), .literal("\u{202F}оны "), .field(.month, 4), .literal("ын "), .field(.day, 1), .literal(", "), .field(.weekday, 4), .literal(" гараг")]
            ), CLDR.Date.Pattern(text: "y\u{202F}'оны' MMMM'ын' d", elements: [.field(.year, 1), .literal("\u{202F}оны "), .field(.month, 4), .literal("ын "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y\u{202F}'оны' MMM'ын' d", elements: [.field(.year, 1), .literal("\u{202F}оны "), .field(.month, 3), .literal("ын "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y.MM.dd", elements: [.field(.year, 1), .literal("."), .field(.month, 2), .literal("."), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "dd MMMM y", elements: [.field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, dd MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 2), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y MMMM d၊ EEEE", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal("၊ "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y MMMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y MMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y MMMM d, EEEE", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y MMMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y MMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "yy/M/d", elements: [.field(.year, 2), .literal("/"), .field(.month, 1), .literal("/"), .field(.day, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 2), .literal("-"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/MM/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d. MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.y", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.MM.y", elements: [.field(.day, 1), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d, MMMM, y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y/M/d", elements: [.field(.year, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.day, 1)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d 'de' MMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 3), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d 'de' MMMM 'de' y",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d 'de' MMMM 'de' y", elements: [.field(.day, 1), .literal(" de "), .field(.month, 4), .literal(" de "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/y", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM, y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d MMMM y\u{202F}'г'.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]
            ), CLDR.Date.Pattern(text: "d MMMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "d MMM y\u{202F}'г'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal("\u{202F}г.")]),
            CLDR.Date.Pattern(text: "dd.MM.y", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, MMMM d, y", elements: [.field(.weekday, 4), .literal(", "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "y MMMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y MMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y MMMM d, EEEE", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y MMMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y MMM d", elements: [.field(.year, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.day, 1)]),
            CLDR.Date.Pattern(text: "y-MM-dd", elements: [.field(.year, 1), .literal("-"), .field(.month, 2), .literal("-"), .field(.day, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d. MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. M. y", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. M. y", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d. MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. MMM y", elements: [.field(.day, 1), .literal(". "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d. M. y", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, MMMM d, y", elements: [.field(.weekday, 4), .literal(", "), .field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "MMMM d, y", elements: [.field(.month, 4), .literal(" "), .field(.day, 1), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd-MMM-y", elements: [.field(.day, 2), .literal("-"), .field(.month, 3), .literal("-"), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.yy", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d. MMMM y.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]
            ), CLDR.Date.Pattern(text: "d. MMMM y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. M. y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1), .literal(".")]),
            CLDR.Date.Pattern(text: "d. M. y.", elements: [.field(.day, 1), .literal(". "), .field(.month, 1), .literal(". "), .field(.year, 1), .literal(".")]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE d MMMM y", elements: [.field(.weekday, 4), .literal(" "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.M.y", elements: [.field(.day, 1), .literal("."), .field(.month, 1), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "d, MMMM y, EEEE", elements: [.field(.day, 1), .literal(", "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "d MMMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM, y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEEที่ d MMMM G y",
                elements: [.field(.weekday, 4), .literal("ที่ "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.era, 1), .literal(" "), .field(.year, 1)]
            ), CLDR.Date.Pattern(text: "d MMMM G y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.era, 1), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "d MMMM y, EEEE", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(", "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd.MM.y", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "d MMMM y EEEE", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal(" "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "d MMMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d.MM.y", elements: [.field(.day, 1), .literal("."), .field(.month, 2), .literal("."), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(
                text: "EEEE, d MMMM y\u{202F}'р'.",
                elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}р.")]
            ), CLDR.Date.Pattern(text: "d MMMM y\u{202F}'р'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal(" "), .field(.year, 1), .literal("\u{202F}р.")]),
            CLDR.Date.Pattern(text: "d MMM y\u{202F}'р'.", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1), .literal("\u{202F}р.")]),
            CLDR.Date.Pattern(text: "dd.MM.yy", elements: [.field(.day, 2), .literal("."), .field(.month, 2), .literal("."), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE، d MMMM، y", elements: [.field(.weekday, 4), .literal("، "), .field(.day, 1), .literal(" "), .field(.month, 4), .literal("، "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMMM، y", elements: [.field(.day, 1), .literal(" "), .field(.month, 4), .literal("، "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM، y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal("، "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d-MMMM, y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal("-"), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d-MMMM, y", elements: [.field(.day, 1), .literal("-"), .field(.month, 4), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d-MMM, y", elements: [.field(.day, 1), .literal("-"), .field(.month, 3), .literal(", "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "EEEE, d MMM y", elements: [.field(.weekday, 4), .literal(", "), .field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MMM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 3), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d MM y", elements: [.field(.day, 1), .literal(" "), .field(.month, 2), .literal(" "), .field(.year, 1)]),
            CLDR.Date.Pattern(text: "d/M/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "y年M月d日 EEEE", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日 "), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y/M/d", elements: [.field(.year, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.day, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "y年M月d日EEEE", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日"), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y/M/d", elements: [.field(.year, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.day, 1)]),
        ],
        [
            CLDR.Date.Pattern(text: "y年M月d日EEEE", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日"), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "d/M/yy", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y年M月d日EEEE", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日"), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "dd/MM/yy", elements: [.field(.day, 2), .literal("/"), .field(.month, 2), .literal("/"), .field(.year, 2)]),
        ],
        [
            CLDR.Date.Pattern(text: "y年M月d日EEEE", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日"), .field(.weekday, 4)]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "y年M月d日", elements: [.field(.year, 1), .literal("年"), .field(.month, 1), .literal("月"), .field(.day, 1), .literal("日")]),
            CLDR.Date.Pattern(text: "d/M/y", elements: [.field(.day, 1), .literal("/"), .field(.month, 1), .literal("/"), .field(.year, 1)]),
        ],
    ]
}
