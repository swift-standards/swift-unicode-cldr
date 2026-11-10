import Cardinal

extension CLDR.Record {

    static let numbers: [CLDR.Number.Data] = [
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "በቁጥር\u{A0}ሊገለጽ\u{A0}የማይችል"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "\u{200E}-", plusSign: "\u{200E}+", infinity: "∞", nan: "ليس\u{A0}رقمًا"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["٠", "١", "٢", "٣", "٤", "٥", "٦", "٧", "٨", "٩"],
            symbols: CLDR.Number.Symbols(decimal: "٫", group: "٬", minusSign: "\u{61C}-", plusSign: "\u{61C}+", infinity: "∞", nan: "ليس\u{A0}رقمًا"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: ".", minusSign: "\u{200E}-", plusSign: "\u{200E}+", infinity: "∞", nan: "ليس\u{A0}رقمًا"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["০", "১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 2)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: ".", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 2)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "хисеп\u{A0}мар"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: "'", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{202F}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: ".", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "−", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: ".", minusSign: "−", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["۰", "۱", "۲", "۳", "۴", "۵", "۶", "۷", "۸", "۹"],
            symbols: CLDR.Number.Symbols(decimal: "٫", group: "٬", minusSign: "\u{200E}−", plusSign: "\u{200E}+", infinity: "∞", nan: "ناعدد"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "−", plusSign: "+", infinity: "∞", nan: "epäluku"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "'", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "Nuimh"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "\u{200E}-", plusSign: "\u{200E}+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "ՈչԹ"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: "'", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "არ\u{A0}არის\u{A0}რიცხვი"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "сан\u{A0}емес"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "سان\u{A0}ەمەس"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "сан\u{A0}эмес"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: ".", minusSign: "-", plusSign: "+", infinity: "∞", nan: "ບໍ່\u{200B}ແມ່ນ\u{200B}ໂຕ\u{200B}ເລກ"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "−", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NS"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["०", "१", "२", "३", "४", "५", "६", "७", "८", "९"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 2)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["၀", "၁", "၂", "၃", "၄", "၅", "၆", "၇", "၈", "၉"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "ဂဏန်းမဟုတ်သော"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["۰", "۱", "۲", "۳", "۴", "۵", "۶", "۷", "۸", "۹"],
            symbols: CLDR.Number.Symbols(decimal: "٫", group: "٬", minusSign: "\u{200E}-\u{200E}", plusSign: "\u{200E}+\u{200E}", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "не\u{A0}число"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "не\u{A0}число"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["٠", "١", "٢", "٣", "٤", "٥", "٦", "٧", "٨", "٩"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: "٬", minusSign: "\u{61C}-", plusSign: "\u{61C}+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: ".", minusSign: "−", plusSign: "+", infinity: "∞", nan: "NaN"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 2
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "MaL"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "san\u{A0}däl"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ",", group: "\u{A0}", minusSign: "-", plusSign: "+", infinity: "∞", nan: "son\u{A0}emas"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "非數值"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
        CLDR.Number.Data(
            digits: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"],
            symbols: CLDR.Number.Symbols(decimal: ".", group: ",", minusSign: "-", plusSign: "+", infinity: "∞", nan: "非数值"),
            pattern: CLDR.Number.Pattern(
                text: "#,##0.###",
                positive: CLDR.Number.Pattern.Affixes(prefix: [], suffix: []),
                negative: nil,
                minimumIntegerDigits: 1,
                minimumFractionDigits: 0,
                maximumFractionDigits: 3,
                grouping: CLDR.Number.Pattern.Grouping(primary: 3, secondary: 3)
            ),
            minimumGroupingDigits: 1
        ),
    ]
}
