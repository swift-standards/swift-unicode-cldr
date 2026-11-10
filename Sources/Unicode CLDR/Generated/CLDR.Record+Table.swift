extension CLDR.Record {

    static func table(_ key: String) -> CLDR.Record? {
        switch key {
        case "af": CLDR.Record(months: [0, 1, 2, 0, 1, 2], days: [3, 4, 3, 5, 3, 4, 3, 5], eras: [6, 7, 6], dates: 0, numbers: 0, direction: .leftToRight)

        case "af-NA": CLDR.Record(months: [0, 1, 2, 0, 1, 2], days: [3, 4, 3, 5, 3, 4, 3, 5], eras: [6, 7, 6], dates: 0, numbers: 0, direction: .leftToRight)

        case "ak": CLDR.Record(months: [8, 9, 8, 8, 10, 8], days: [11, 12, 11, 13, 11, 12, 11, 13], eras: [14, 15, 14], dates: 1, numbers: 1, direction: .leftToRight)

        case "am": CLDR.Record(months: [16, 17, 18, 16, 17, 18], days: [19, 20, 20, 21, 19, 20, 20, 21], eras: [22, 23, 22], dates: 2, numbers: 2, direction: .leftToRight)

        case "ar": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 3, direction: .rightToLeft)

        case "ar-AE": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 3, direction: .rightToLeft)

        case "ar-BH": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-DJ": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-DZ": CLDR.Record(months: [31, 32, 31, 31, 32, 31], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 5, direction: .rightToLeft)

        case "ar-EG": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-EH": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 3, direction: .rightToLeft)

        case "ar-ER": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-IL": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-IQ": CLDR.Record(months: [33, 34, 35, 35, 34, 35], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-JO": CLDR.Record(months: [35, 34, 35, 35, 34, 35], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-KM": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-KW": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-LB": CLDR.Record(months: [35, 34, 35, 35, 34, 35], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-LY": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 5, direction: .rightToLeft)

        case "ar-MA": CLDR.Record(months: [36, 37, 36, 36, 37, 36], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 5, direction: .rightToLeft)

        case "ar-MR": CLDR.Record(months: [38, 39, 38, 38, 39, 38], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-OM": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-PS": CLDR.Record(months: [35, 34, 35, 35, 34, 35], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-QA": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-SA": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-SD": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-SO": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-SS": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-SY": CLDR.Record(months: [35, 34, 35, 35, 34, 35], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-TD": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "ar-TN": CLDR.Record(months: [31, 32, 31, 31, 32, 31], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 5, direction: .rightToLeft)

        case "ar-YE": CLDR.Record(months: [24, 25, 24, 24, 25, 24], days: [26, 27, 28, 26, 26, 27, 28, 26], eras: [29, 30, 29], dates: 3, numbers: 4, direction: .rightToLeft)

        case "as": CLDR.Record(months: [40, 41, 42, 40, 41, 42], days: [43, 44, 43, 45, 43, 44, 43, 45], eras: [46, 47, 46], dates: 4, numbers: 6, direction: .leftToRight)

        case "az": CLDR.Record(months: [48, 49, 50, 48, 51, 50], days: [52, 53, 54, 55, 54, 53, 54, 55], eras: [56, 57, 56], dates: 5, numbers: 7, direction: .leftToRight)

        case "az-Latn": CLDR.Record(months: [48, 49, 50, 48, 51, 50], days: [52, 53, 54, 55, 54, 53, 54, 55], eras: [56, 57, 56], dates: 5, numbers: 7, direction: .leftToRight)

        case "be": CLDR.Record(months: [58, 59, 60, 61, 59, 62], days: [63, 64, 63, 65, 63, 64, 63, 65], eras: [66, 67, 66], dates: 6, numbers: 8, direction: .leftToRight)

        case "be-tarask": CLDR.Record(months: [58, 59, 60, 61, 59, 62], days: [63, 64, 63, 65, 63, 64, 63, 65], eras: [66, 67, 66], dates: 6, numbers: 8, direction: .leftToRight)

        case "bg": CLDR.Record(months: [68, 69, 70, 68, 69, 70], days: [71, 72, 71, 73, 71, 72, 71, 73], eras: [74, 75, 74], dates: 7, numbers: 8, direction: .leftToRight)

        case "bn": CLDR.Record(months: [76, 77, 78, 79, 77, 78], days: [80, 81, 82, 83, 80, 81, 82, 83], eras: [84, 85, 84], dates: 8, numbers: 6, direction: .leftToRight)

        case "bn-IN": CLDR.Record(months: [86, 87, 78, 88, 87, 78], days: [80, 81, 89, 83, 80, 81, 89, 83], eras: [90, 91, 90], dates: 8, numbers: 9, direction: .leftToRight)

        case "bs": CLDR.Record(months: [92, 92, 93, 92, 94, 93], days: [95, 96, 95, 97, 95, 98, 95, 97], eras: [99, 100, 101], dates: 9, numbers: 7, direction: .leftToRight)

        case "bs-Latn": CLDR.Record(months: [92, 92, 93, 92, 94, 93], days: [95, 96, 95, 97, 95, 98, 95, 97], eras: [99, 100, 101], dates: 9, numbers: 7, direction: .leftToRight)

        case "ca": CLDR.Record(months: [102, 103, 104, 105, 103, 106], days: [107, 107, 107, 108, 107, 107, 107, 108], eras: [109, 110, 109], dates: 10, numbers: 7, direction: .leftToRight)

        case "ca-AD": CLDR.Record(months: [102, 103, 104, 105, 103, 106], days: [107, 107, 107, 108, 107, 107, 107, 108], eras: [109, 110, 109], dates: 10, numbers: 7, direction: .leftToRight)

        case "ca-ES-valencia":
            CLDR.Record(months: [102, 103, 104, 105, 103, 106], days: [107, 107, 107, 108, 107, 107, 107, 108], eras: [109, 110, 109], dates: 10, numbers: 7, direction: .leftToRight)

        case "ca-FR": CLDR.Record(months: [102, 103, 104, 105, 103, 106], days: [107, 107, 107, 108, 107, 107, 107, 108], eras: [109, 110, 109], dates: 10, numbers: 7, direction: .leftToRight)

        case "ca-IT": CLDR.Record(months: [102, 103, 104, 105, 103, 106], days: [107, 107, 107, 108, 107, 107, 107, 108], eras: [109, 110, 109], dates: 10, numbers: 7, direction: .leftToRight)

        case "chr": CLDR.Record(months: [111, 112, 113, 111, 112, 113], days: [114, 115, 116, 117, 114, 115, 116, 117], eras: [118, 119, 118], dates: 11, numbers: 1, direction: .leftToRight)

        case "cs": CLDR.Record(months: [120, 121, 122, 120, 121, 123], days: [124, 125, 124, 126, 124, 125, 124, 126], eras: [127, 128, 129], dates: 12, numbers: 0, direction: .leftToRight)

        case "cv": CLDR.Record(months: [130, 131, 132, 130, 131, 132], days: [133, 134, 133, 135, 133, 134, 133, 135], eras: [136, 137, 136], dates: 13, numbers: 10, direction: .leftToRight)

        case "cy": CLDR.Record(months: [138, 139, 140, 141, 139, 140], days: [142, 143, 144, 145, 146, 143, 144, 145], eras: [147, 148, 149], dates: 14, numbers: 1, direction: .leftToRight)

        case "da": CLDR.Record(months: [150, 1, 151, 150, 1, 151], days: [152, 153, 154, 155, 152, 153, 154, 155], eras: [156, 157, 158], dates: 15, numbers: 7, direction: .leftToRight)

        case "da-GL": CLDR.Record(months: [150, 1, 151, 150, 1, 151], days: [152, 153, 154, 155, 152, 153, 154, 155], eras: [156, 157, 158], dates: 15, numbers: 7, direction: .leftToRight)

        case "de": CLDR.Record(months: [159, 1, 160, 161, 1, 160], days: [162, 163, 162, 164, 165, 163, 162, 164], eras: [166, 166, 166], dates: 16, numbers: 7, direction: .leftToRight)

        case "de-AT": CLDR.Record(months: [167, 1, 168, 169, 1, 168], days: [162, 163, 162, 164, 165, 163, 162, 164], eras: [166, 166, 166], dates: 16, numbers: 0, direction: .leftToRight)

        case "de-BE": CLDR.Record(months: [159, 1, 160, 161, 1, 160], days: [162, 163, 162, 164, 165, 163, 162, 164], eras: [166, 166, 166], dates: 16, numbers: 7, direction: .leftToRight)

        case "de-CH": CLDR.Record(months: [159, 1, 160, 161, 1, 160], days: [162, 163, 165, 164, 165, 163, 165, 164], eras: [166, 166, 166], dates: 16, numbers: 11, direction: .leftToRight)

        case "de-IT": CLDR.Record(months: [167, 1, 168, 169, 1, 168], days: [162, 163, 162, 164, 165, 163, 162, 164], eras: [166, 166, 166], dates: 16, numbers: 7, direction: .leftToRight)

        case "de-LI": CLDR.Record(months: [159, 1, 160, 161, 1, 160], days: [162, 163, 162, 164, 165, 163, 162, 164], eras: [166, 166, 166], dates: 16, numbers: 11, direction: .leftToRight)

        case "de-LU": CLDR.Record(months: [159, 1, 160, 161, 1, 160], days: [162, 163, 162, 164, 165, 163, 162, 164], eras: [166, 166, 166], dates: 16, numbers: 7, direction: .leftToRight)

        case "dsb": CLDR.Record(months: [170, 94, 171, 172, 94, 173], days: [174, 175, 176, 177, 174, 175, 176, 177], eras: [178, 179, 178], dates: 17, numbers: 7, direction: .leftToRight)

        case "el": CLDR.Record(months: [180, 181, 182, 183, 181, 184], days: [185, 186, 187, 188, 185, 186, 187, 188], eras: [189, 190, 189], dates: 18, numbers: 7, direction: .leftToRight)

        case "el-CY": CLDR.Record(months: [180, 181, 182, 183, 181, 184], days: [185, 186, 187, 188, 185, 186, 187, 188], eras: [189, 190, 189], dates: 18, numbers: 7, direction: .leftToRight)

        case "el-polyton": CLDR.Record(months: [191, 181, 192, 183, 181, 193], days: [185, 186, 187, 188, 185, 186, 187, 188], eras: [189, 190, 189], dates: 18, numbers: 7, direction: .leftToRight)

        case "en": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-001": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-150": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-AE": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-AG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-AI": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-AS": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-AT": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-AU": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 20, numbers: 1, direction: .leftToRight)

        case "en-BB": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-BE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 21, numbers: 7, direction: .leftToRight)

        case "en-BI": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-BM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-BS": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-BW": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 22, numbers: 1, direction: .leftToRight)

        case "en-BZ": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 23, numbers: 1, direction: .leftToRight)

        case "en-CA": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 24, numbers: 1, direction: .leftToRight)

        case "en-CC": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-CH": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 25, numbers: 11, direction: .leftToRight)

        case "en-CK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-CM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-CX": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-CY": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-CZ": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-DE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-DG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-DK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-DM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-EE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-ER": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-ES": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-FI": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-FJ": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-FK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-FM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-FR": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 12, direction: .leftToRight)

        case "en-GB": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GD": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 12, direction: .leftToRight)

        case "en-GG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GH": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GI": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GS": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-GU": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-GY": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-HK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 26, numbers: 1, direction: .leftToRight)

        case "en-HU": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-ID": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-IE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 2, numbers: 1, direction: .leftToRight)

        case "en-IL": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-IM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-IN": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 14, numbers: 9, direction: .leftToRight)

        case "en-IO": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-IT": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-JE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-JM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-JP": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 27, numbers: 1, direction: .leftToRight)

        case "en-KE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-KI": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-KN": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-KY": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-LC": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-LR": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-LS": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-LT": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-LV": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-MG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-MH": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-MO": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-MP": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-MS": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-MT": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 28, numbers: 1, direction: .leftToRight)

        case "en-MU": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-MV": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 29, numbers: 1, direction: .leftToRight)

        case "en-MW": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-MY": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-NA": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-NF": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-NG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-NL": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-NO": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-NR": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-NU": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-NZ": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-PG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-PH": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-PK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 30, numbers: 1, direction: .leftToRight)

        case "en-PL": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-PN": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-PR": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-PT": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-PW": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-RO": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-RW": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SB": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SC": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SD": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SE": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 31, numbers: 0, direction: .leftToRight)

        case "en-SG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 20, numbers: 1, direction: .leftToRight)

        case "en-SH": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SI": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 7, direction: .leftToRight)

        case "en-SK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-SL": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SS": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SX": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-SZ": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-TC": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-TK": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-TO": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-TT": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-TV": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-TZ": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-UA": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 0, direction: .leftToRight)

        case "en-UG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-UM": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-VC": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-VG": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-VI": CLDR.Record(months: [194, 1, 195, 194, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 11, numbers: 1, direction: .leftToRight)

        case "en-VU": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-WS": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-ZA": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 32, numbers: 0, direction: .leftToRight)

        case "en-ZM": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 19, numbers: 1, direction: .leftToRight)

        case "en-ZW": CLDR.Record(months: [202, 1, 195, 202, 1, 195], days: [196, 197, 198, 199, 196, 197, 198, 199], eras: [118, 200, 201], dates: 33, numbers: 1, direction: .leftToRight)

        case "es": CLDR.Record(months: [203, 204, 205, 203, 204, 205], days: [206, 207, 208, 209, 206, 207, 208, 209], eras: [210, 211, 210], dates: 34, numbers: 13, direction: .leftToRight)

        case "es-419": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-AR": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 7, direction: .leftToRight)

        case "es-BO": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 35, numbers: 7, direction: .leftToRight)

        case "es-BR": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-BZ": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-CL": CLDR.Record(months: [212, 204, 205, 215, 204, 205], days: [206, 213, 216, 209, 206, 213, 216, 209], eras: [214, 211, 214], dates: 36, numbers: 7, direction: .leftToRight)

        case "es-CO": CLDR.Record(months: [212, 204, 205, 215, 204, 205], days: [206, 217, 208, 209, 206, 218, 208, 209], eras: [214, 211, 214], dates: 37, numbers: 7, direction: .leftToRight)

        case "es-CR": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 0, direction: .leftToRight)

        case "es-CU": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-DO": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-EA": CLDR.Record(months: [203, 204, 205, 203, 204, 205], days: [206, 207, 208, 209, 206, 207, 208, 209], eras: [210, 211, 210], dates: 34, numbers: 13, direction: .leftToRight)

        case "es-EC": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 7, direction: .leftToRight)

        case "es-GQ": CLDR.Record(months: [203, 204, 205, 203, 204, 205], days: [206, 207, 208, 209, 206, 207, 208, 209], eras: [210, 211, 210], dates: 34, numbers: 13, direction: .leftToRight)

        case "es-GT": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 37, numbers: 1, direction: .leftToRight)

        case "es-HN": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 38, numbers: 1, direction: .leftToRight)

        case "es-IC": CLDR.Record(months: [203, 204, 205, 203, 204, 205], days: [206, 207, 208, 209, 206, 207, 208, 209], eras: [210, 211, 210], dates: 34, numbers: 13, direction: .leftToRight)

        case "es-MX": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 39, numbers: 1, direction: .leftToRight)

        case "es-NI": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-PA": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 40, numbers: 1, direction: .leftToRight)

        case "es-PE": CLDR.Record(months: [219, 204, 220, 221, 204, 222], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 41, numbers: 1, direction: .leftToRight)

        case "es-PH": CLDR.Record(months: [203, 204, 205, 203, 204, 205], days: [206, 207, 208, 209, 206, 207, 208, 209], eras: [210, 211, 210], dates: 34, numbers: 13, direction: .leftToRight)

        case "es-PR": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 40, numbers: 1, direction: .leftToRight)

        case "es-PY": CLDR.Record(months: [215, 204, 205, 212, 204, 205], days: [206, 213, 223, 209, 206, 213, 224, 209], eras: [214, 211, 214], dates: 34, numbers: 7, direction: .leftToRight)

        case "es-SV": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 1, direction: .leftToRight)

        case "es-US": CLDR.Record(months: [212, 204, 205, 212, 204, 205], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 42, numbers: 1, direction: .leftToRight)

        case "es-UY": CLDR.Record(months: [219, 204, 220, 221, 204, 222], days: [206, 213, 208, 209, 206, 213, 208, 209], eras: [214, 211, 214], dates: 34, numbers: 7, direction: .leftToRight)

        case "es-VE": CLDR.Record(months: [215, 204, 205, 212, 204, 205], days: [206, 213, 224, 209, 206, 213, 224, 209], eras: [214, 211, 214], dates: 34, numbers: 7, direction: .leftToRight)

        case "et": CLDR.Record(months: [225, 226, 227, 225, 226, 227], days: [228, 228, 228, 229, 228, 228, 228, 229], eras: [230, 231, 230], dates: 43, numbers: 14, direction: .leftToRight)

        case "eu": CLDR.Record(months: [232, 233, 234, 232, 233, 234], days: [235, 236, 235, 237, 235, 236, 235, 237], eras: [238, 239, 240], dates: 44, numbers: 15, direction: .leftToRight)

        case "fa": CLDR.Record(months: [241, 242, 241, 241, 242, 241], days: [243, 244, 245, 243, 243, 244, 245, 243], eras: [246, 247, 248], dates: 45, numbers: 16, direction: .rightToLeft)

        case "fa-AF": CLDR.Record(months: [249, 250, 251, 251, 250, 251], days: [243, 244, 245, 243, 243, 244, 245, 243], eras: [246, 247, 248], dates: 45, numbers: 16, direction: .rightToLeft)

        case "fi": CLDR.Record(months: [252, 253, 254, 252, 253, 255], days: [256, 257, 256, 258, 256, 257, 256, 259], eras: [260, 261, 262], dates: 46, numbers: 17, direction: .leftToRight)

        case "fil": CLDR.Record(months: [263, 263, 264, 263, 265, 264], days: [266, 266, 266, 267, 266, 266, 266, 267], eras: [118, 200, 118], dates: 11, numbers: 1, direction: .leftToRight)

        case "fr": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-BE": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 47, numbers: 12, direction: .leftToRight)

        case "fr-BF": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-BI": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-BJ": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-BL": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-CA": CLDR.Record(months: [275, 1, 269, 275, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 48, numbers: 0, direction: .leftToRight)

        case "fr-CD": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-CF": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-CG": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-CH": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 5, numbers: 18, direction: .leftToRight)

        case "fr-CI": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-CM": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-DJ": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-DZ": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-GA": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-GF": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-GN": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-GP": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-GQ": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-HT": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-KM": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-LU": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 7, direction: .leftToRight)

        case "fr-MA": CLDR.Record(months: [276, 1, 269, 276, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 7, direction: .leftToRight)

        case "fr-MC": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-MF": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-MG": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-ML": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-MQ": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-MR": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-MU": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-NC": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-NE": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-PF": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-PM": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-RE": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-RW": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 1, direction: .leftToRight)

        case "fr-SC": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-SN": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-SY": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-TD": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-TG": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-TN": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-VU": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-WF": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "fr-YT": CLDR.Record(months: [268, 1, 269, 268, 1, 269], days: [270, 213, 271, 272, 270, 213, 271, 272], eras: [273, 274, 273], dates: 2, numbers: 12, direction: .leftToRight)

        case "ga": CLDR.Record(months: [277, 278, 279, 277, 278, 279], days: [280, 281, 282, 283, 280, 281, 282, 283], eras: [284, 285, 284], dates: 18, numbers: 19, direction: .leftToRight)

        case "ga-GB": CLDR.Record(months: [277, 278, 279, 277, 278, 279], days: [280, 281, 282, 283, 280, 281, 282, 283], eras: [284, 285, 284], dates: 18, numbers: 19, direction: .leftToRight)

        case "gd": CLDR.Record(months: [286, 287, 288, 286, 287, 289], days: [290, 291, 292, 293, 290, 291, 292, 293], eras: [284, 294, 295], dates: 49, numbers: 1, direction: .leftToRight)

        case "gl": CLDR.Record(months: [296, 297, 298, 296, 299, 298], days: [300, 301, 302, 303, 300, 304, 302, 303], eras: [214, 305, 214], dates: 50, numbers: 0, direction: .leftToRight)

        case "gu": CLDR.Record(months: [306, 307, 308, 306, 307, 308], days: [309, 310, 310, 311, 309, 310, 310, 311], eras: [312, 313, 314], dates: 8, numbers: 9, direction: .leftToRight)

        case "ha": CLDR.Record(months: [315, 316, 317, 315, 316, 317], days: [318, 319, 320, 321, 318, 319, 320, 321], eras: [322, 323, 322], dates: 51, numbers: 1, direction: .leftToRight)

        case "ha-GH": CLDR.Record(months: [315, 316, 317, 315, 316, 317], days: [318, 319, 320, 321, 318, 319, 320, 321], eras: [322, 323, 322], dates: 51, numbers: 1, direction: .leftToRight)

        case "ha-NE": CLDR.Record(months: [315, 316, 317, 315, 316, 317], days: [318, 319, 320, 321, 318, 319, 320, 321], eras: [322, 323, 322], dates: 51, numbers: 1, direction: .leftToRight)

        case "he": CLDR.Record(months: [324, 121, 325, 324, 121, 325], days: [326, 327, 327, 328, 326, 327, 327, 328], eras: [329, 330, 331], dates: 52, numbers: 20, direction: .rightToLeft)

        case "hi": CLDR.Record(months: [332, 333, 334, 332, 333, 334], days: [335, 336, 336, 337, 335, 336, 336, 337], eras: [338, 339, 338], dates: 20, numbers: 9, direction: .leftToRight)

        case "hi-Latn": CLDR.Record(months: [194, 1, 195, 202, 1, 195], days: [340, 341, 342, 343, 340, 341, 342, 343], eras: [118, 200, 201], dates: 53, numbers: 9, direction: .leftToRight)

        case "hr": CLDR.Record(months: [344, 345, 346, 344, 345, 347], days: [95, 96, 95, 97, 95, 98, 95, 97], eras: [348, 349, 350], dates: 54, numbers: 15, direction: .leftToRight)

        case "hr-BA": CLDR.Record(months: [344, 345, 346, 344, 345, 347], days: [95, 96, 95, 97, 95, 96, 95, 97], eras: [348, 349, 350], dates: 55, numbers: 15, direction: .leftToRight)

        case "hsb": CLDR.Record(months: [351, 94, 352, 353, 94, 354], days: [355, 356, 357, 358, 355, 356, 357, 358], eras: [359, 360, 359], dates: 17, numbers: 7, direction: .leftToRight)

        case "hu": CLDR.Record(months: [361, 362, 363, 361, 362, 363], days: [364, 365, 364, 366, 364, 365, 364, 366], eras: [367, 368, 369], dates: 56, numbers: 8, direction: .leftToRight)

        case "hy": CLDR.Record(months: [370, 371, 372, 370, 371, 373], days: [374, 375, 376, 377, 374, 375, 376, 377], eras: [378, 379, 378], dates: 57, numbers: 21, direction: .leftToRight)

        case "id": CLDR.Record(months: [380, 1, 381, 380, 1, 381], days: [382, 383, 382, 384, 382, 383, 382, 384], eras: [385, 386, 385], dates: 58, numbers: 7, direction: .leftToRight)

        case "ig": CLDR.Record(months: [387, 388, 389, 387, 388, 389], days: [390, 197, 390, 391, 390, 197, 390, 391], eras: [118, 392, 118], dates: 20, numbers: 1, direction: .leftToRight)

        case "is": CLDR.Record(months: [393, 394, 395, 393, 394, 395], days: [396, 397, 398, 399, 396, 397, 398, 399], eras: [156, 400, 401], dates: 59, numbers: 7, direction: .leftToRight)

        case "it": CLDR.Record(months: [402, 403, 404, 402, 403, 404], days: [405, 406, 405, 407, 405, 406, 405, 407], eras: [214, 408, 109], dates: 60, numbers: 13, direction: .leftToRight)

        case "it-CH": CLDR.Record(months: [402, 403, 404, 402, 403, 404], days: [405, 406, 405, 407, 405, 406, 405, 407], eras: [214, 408, 109], dates: 5, numbers: 22, direction: .leftToRight)

        case "it-SM": CLDR.Record(months: [402, 403, 404, 402, 403, 404], days: [405, 406, 405, 407, 405, 406, 405, 407], eras: [214, 408, 109], dates: 60, numbers: 13, direction: .leftToRight)

        case "it-VA": CLDR.Record(months: [402, 403, 404, 402, 403, 404], days: [405, 406, 405, 407, 405, 406, 405, 407], eras: [214, 408, 109], dates: 60, numbers: 13, direction: .leftToRight)

        case "ja": CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [410, 410, 410, 411, 410, 410, 410, 411], eras: [412, 412, 118], dates: 61, numbers: 1, direction: .leftToRight)

        case "jv": CLDR.Record(months: [413, 1, 381, 413, 1, 381], days: [414, 415, 414, 416, 414, 415, 414, 416], eras: [385, 417, 385], dates: 62, numbers: 7, direction: .leftToRight)

        case "ka": CLDR.Record(months: [418, 419, 420, 418, 419, 420], days: [421, 422, 423, 424, 421, 422, 423, 424], eras: [425, 426, 425], dates: 63, numbers: 23, direction: .leftToRight)

        case "kk": CLDR.Record(months: [427, 428, 429, 427, 428, 430], days: [431, 432, 431, 433, 431, 432, 431, 433], eras: [434, 435, 434], dates: 64, numbers: 24, direction: .leftToRight)

        case "kk-Arab": CLDR.Record(months: [436, 121, 436, 436, 121, 436], days: [437, 438, 439, 440, 437, 438, 439, 440], eras: [441, 442, 441], dates: 65, numbers: 25, direction: .rightToLeft)

        case "kk-Cyrl": CLDR.Record(months: [427, 428, 429, 427, 428, 430], days: [431, 432, 431, 433, 431, 432, 431, 433], eras: [434, 435, 434], dates: 64, numbers: 24, direction: .leftToRight)

        case "kk-KZ": CLDR.Record(months: [427, 428, 429, 427, 428, 430], days: [431, 432, 431, 433, 431, 432, 431, 433], eras: [434, 435, 434], dates: 64, numbers: 24, direction: .leftToRight)

        case "km": CLDR.Record(months: [443, 444, 443, 443, 444, 443], days: [445, 446, 447, 448, 445, 446, 447, 449], eras: [450, 451, 450], dates: 18, numbers: 1, direction: .leftToRight)

        case "kn": CLDR.Record(months: [452, 453, 454, 452, 453, 454], days: [455, 456, 455, 457, 455, 456, 455, 457], eras: [458, 459, 458], dates: 66, numbers: 1, direction: .leftToRight)

        case "ko": CLDR.Record(months: [460, 460, 460, 460, 460, 460], days: [461, 461, 461, 462, 461, 461, 461, 462], eras: [118, 463, 118], dates: 67, numbers: 1, direction: .leftToRight)

        case "ko-CN": CLDR.Record(months: [460, 460, 460, 460, 460, 460], days: [461, 461, 461, 462, 461, 461, 461, 462], eras: [118, 463, 118], dates: 67, numbers: 1, direction: .leftToRight)

        case "ko-KP": CLDR.Record(months: [460, 460, 460, 460, 460, 460], days: [461, 461, 461, 462, 461, 461, 461, 462], eras: [118, 463, 118], dates: 67, numbers: 1, direction: .leftToRight)

        case "kok": CLDR.Record(months: [464, 465, 466, 467, 465, 466], days: [468, 469, 470, 468, 468, 471, 472, 468], eras: [473, 474, 475], dates: 68, numbers: 9, direction: .leftToRight)

        case "kok-Deva": CLDR.Record(months: [464, 465, 466, 467, 465, 466], days: [468, 469, 470, 468, 468, 471, 472, 468], eras: [473, 474, 475], dates: 68, numbers: 9, direction: .leftToRight)

        case "ky": CLDR.Record(months: [476, 477, 478, 479, 477, 480], days: [481, 482, 483, 484, 481, 482, 483, 484], eras: [485, 486, 485], dates: 69, numbers: 26, direction: .leftToRight)

        case "lo": CLDR.Record(months: [487, 121, 488, 487, 121, 488], days: [489, 490, 491, 492, 489, 490, 491, 492], eras: [493, 494, 493], dates: 26, numbers: 27, direction: .leftToRight)

        case "lt": CLDR.Record(months: [495, 496, 497, 495, 496, 498], days: [499, 500, 501, 502, 499, 500, 501, 502], eras: [503, 504, 503], dates: 70, numbers: 28, direction: .leftToRight)

        case "lv": CLDR.Record(months: [505, 1, 506, 505, 1, 506], days: [507, 508, 509, 510, 511, 508, 509, 512], eras: [513, 514, 513], dates: 71, numbers: 29, direction: .leftToRight)

        case "mk": CLDR.Record(months: [515, 516, 517, 515, 516, 517], days: [518, 72, 518, 519, 518, 72, 518, 519], eras: [520, 521, 520], dates: 72, numbers: 7, direction: .leftToRight)

        case "ml": CLDR.Record(months: [522, 523, 524, 522, 523, 524], days: [525, 526, 527, 528, 525, 527, 527, 529], eras: [530, 531, 530], dates: 73, numbers: 9, direction: .leftToRight)

        case "mn": CLDR.Record(months: [532, 533, 534, 532, 533, 535], days: [536, 536, 536, 537, 536, 536, 536, 538], eras: [539, 540, 539], dates: 74, numbers: 1, direction: .leftToRight)

        case "mr": CLDR.Record(months: [541, 465, 542, 541, 465, 542], days: [543, 336, 336, 544, 543, 336, 336, 544], eras: [545, 546, 545], dates: 8, numbers: 30, direction: .leftToRight)

        case "ms": CLDR.Record(months: [547, 548, 549, 547, 548, 549], days: [550, 551, 552, 553, 550, 551, 552, 553], eras: [554, 554, 554], dates: 75, numbers: 1, direction: .leftToRight)

        case "ms-BN": CLDR.Record(months: [547, 548, 549, 547, 548, 549], days: [550, 551, 552, 553, 550, 551, 552, 553], eras: [554, 554, 554], dates: 76, numbers: 7, direction: .leftToRight)

        case "ms-ID": CLDR.Record(months: [547, 548, 549, 547, 548, 549], days: [550, 551, 552, 553, 550, 551, 552, 553], eras: [554, 554, 554], dates: 77, numbers: 7, direction: .leftToRight)

        case "ms-SG": CLDR.Record(months: [547, 548, 549, 547, 548, 549], days: [550, 551, 552, 553, 550, 551, 552, 553], eras: [554, 554, 554], dates: 75, numbers: 1, direction: .leftToRight)

        case "my": CLDR.Record(months: [555, 556, 557, 555, 556, 557], days: [558, 559, 560, 558, 558, 559, 560, 558], eras: [561, 562, 561], dates: 78, numbers: 31, direction: .leftToRight)

        case "ne": CLDR.Record(months: [563, 564, 563, 563, 565, 563], days: [566, 567, 566, 568, 566, 567, 566, 568], eras: [569, 569, 569], dates: 79, numbers: 30, direction: .leftToRight)

        case "ne-IN": CLDR.Record(months: [563, 564, 563, 563, 565, 563], days: [566, 567, 566, 568, 566, 567, 566, 568], eras: [569, 569, 569], dates: 79, numbers: 30, direction: .leftToRight)

        case "nl": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 80, numbers: 7, direction: .leftToRight)

        case "nl-AW": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 80, numbers: 7, direction: .leftToRight)

        case "nl-BE": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 81, numbers: 7, direction: .leftToRight)

        case "nl-BQ": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 80, numbers: 7, direction: .leftToRight)

        case "nl-CW": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 80, numbers: 7, direction: .leftToRight)

        case "nl-SR": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 80, numbers: 7, direction: .leftToRight)

        case "nl-SX": CLDR.Record(months: [570, 1, 571, 570, 1, 571], days: [572, 573, 572, 574, 572, 573, 572, 574], eras: [575, 576, 6], dates: 80, numbers: 7, direction: .leftToRight)

        case "nn": CLDR.Record(months: [577, 1, 578, 579, 1, 578], days: [580, 153, 580, 581, 580, 153, 580, 581], eras: [156, 582, 156], dates: 82, numbers: 28, direction: .leftToRight)

        case "no": CLDR.Record(months: [577, 1, 578, 579, 1, 578], days: [583, 153, 154, 155, 583, 153, 154, 155], eras: [156, 582, 156], dates: 82, numbers: 28, direction: .leftToRight)

        case "or": CLDR.Record(months: [584, 585, 584, 584, 585, 584], days: [586, 587, 586, 588, 586, 587, 586, 588], eras: [118, 589, 118], dates: 11, numbers: 9, direction: .leftToRight)

        case "pa": CLDR.Record(months: [590, 591, 592, 590, 591, 592], days: [593, 594, 595, 596, 593, 594, 595, 596], eras: [597, 598, 599], dates: 20, numbers: 9, direction: .leftToRight)

        case "pa-Guru": CLDR.Record(months: [590, 591, 592, 590, 591, 592], days: [593, 594, 595, 596, 593, 594, 595, 596], eras: [597, 598, 599], dates: 20, numbers: 9, direction: .leftToRight)

        case "pcm": CLDR.Record(months: [600, 1, 601, 602, 1, 601], days: [603, 197, 603, 604, 603, 197, 603, 604], eras: [605, 606, 605], dates: 19, numbers: 1, direction: .leftToRight)

        case "pl": CLDR.Record(months: [607, 608, 609, 607, 610, 611], days: [612, 613, 614, 615, 612, 616, 614, 615], eras: [617, 618, 617], dates: 83, numbers: 8, direction: .leftToRight)

        case "ps": CLDR.Record(months: [619, 250, 619, 620, 621, 622], days: [623, 244, 244, 624, 623, 244, 244, 623], eras: [625, 626, 625], dates: 84, numbers: 32, direction: .rightToLeft)

        case "ps-PK": CLDR.Record(months: [619, 250, 619, 620, 621, 622], days: [623, 244, 244, 624, 623, 244, 244, 623], eras: [625, 626, 625], dates: 84, numbers: 32, direction: .rightToLeft)

        case "pt": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [629, 630, 629, 631, 629, 630, 629, 631], eras: [214, 632, 214], dates: 85, numbers: 7, direction: .leftToRight)

        case "pt-AO": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 0, direction: .leftToRight)

        case "pt-CH": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-CV": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-GQ": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-GW": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-LU": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-MO": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-MZ": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-PT": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-ST": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "pt-TL": CLDR.Record(months: [627, 1, 628, 627, 1, 628], days: [633, 630, 629, 631, 633, 630, 629, 631], eras: [214, 632, 214], dates: 86, numbers: 8, direction: .leftToRight)

        case "qu": CLDR.Record(months: [634, 121, 222, 634, 121, 222], days: [635, 207, 635, 636, 635, 207, 635, 636], eras: [637, 638, 639], dates: 87, numbers: 1, direction: .leftToRight)

        case "qu-BO": CLDR.Record(months: [634, 121, 222, 634, 121, 222], days: [635, 207, 635, 636, 635, 207, 635, 636], eras: [637, 638, 639], dates: 87, numbers: 7, direction: .leftToRight)

        case "qu-EC": CLDR.Record(months: [634, 121, 222, 634, 121, 222], days: [635, 207, 635, 636, 635, 207, 635, 636], eras: [637, 638, 639], dates: 87, numbers: 1, direction: .leftToRight)

        case "ro": CLDR.Record(months: [640, 641, 642, 640, 641, 642], days: [643, 213, 644, 645, 643, 213, 644, 645], eras: [646, 647, 646], dates: 25, numbers: 7, direction: .leftToRight)

        case "ro-MD": CLDR.Record(months: [640, 641, 642, 640, 641, 642], days: [648, 649, 650, 645, 648, 649, 650, 645], eras: [646, 647, 646], dates: 25, numbers: 7, direction: .leftToRight)

        case "ru": CLDR.Record(months: [651, 477, 652, 653, 477, 478], days: [654, 655, 654, 656, 654, 655, 654, 656], eras: [657, 658, 659], dates: 88, numbers: 33, direction: .leftToRight)

        case "ru-BY": CLDR.Record(months: [651, 477, 652, 653, 477, 478], days: [654, 655, 654, 656, 654, 655, 654, 656], eras: [657, 658, 659], dates: 88, numbers: 33, direction: .leftToRight)

        case "ru-KG": CLDR.Record(months: [651, 477, 652, 653, 477, 478], days: [654, 655, 654, 656, 654, 655, 654, 656], eras: [657, 658, 659], dates: 88, numbers: 33, direction: .leftToRight)

        case "ru-KZ": CLDR.Record(months: [651, 477, 652, 653, 477, 478], days: [654, 655, 654, 656, 654, 655, 654, 656], eras: [657, 658, 659], dates: 88, numbers: 33, direction: .leftToRight)

        case "ru-MD": CLDR.Record(months: [651, 477, 652, 653, 477, 478], days: [654, 655, 654, 656, 654, 655, 654, 656], eras: [657, 658, 659], dates: 88, numbers: 33, direction: .leftToRight)

        case "ru-UA": CLDR.Record(months: [651, 477, 652, 653, 477, 478], days: [654, 655, 654, 656, 654, 655, 654, 656], eras: [657, 658, 659], dates: 88, numbers: 34, direction: .leftToRight)

        case "sd": CLDR.Record(months: [660, 1, 660, 660, 1, 660], days: [661, 662, 661, 661, 661, 662, 661, 661], eras: [663, 664, 663], dates: 89, numbers: 35, direction: .rightToLeft)

        case "sd-Arab": CLDR.Record(months: [660, 1, 660, 660, 1, 660], days: [661, 662, 661, 661, 661, 662, 661, 661], eras: [663, 664, 663], dates: 89, numbers: 35, direction: .rightToLeft)

        case "si": CLDR.Record(months: [665, 666, 665, 665, 666, 665], days: [667, 668, 669, 670, 667, 668, 669, 670], eras: [671, 672, 671], dates: 90, numbers: 1, direction: .leftToRight)

        case "sk": CLDR.Record(months: [673, 94, 674, 673, 94, 675], days: [676, 677, 676, 678, 676, 677, 676, 678], eras: [679, 680, 679], dates: 91, numbers: 0, direction: .leftToRight)

        case "sl": CLDR.Record(months: [681, 94, 682, 681, 94, 682], days: [683, 684, 683, 685, 683, 684, 683, 685], eras: [503, 686, 503], dates: 92, numbers: 36, direction: .leftToRight)

        case "so": CLDR.Record(months: [687, 688, 689, 687, 688, 690], days: [691, 692, 691, 693, 691, 692, 691, 693], eras: [118, 694, 201], dates: 93, numbers: 37, direction: .leftToRight)

        case "so-DJ": CLDR.Record(months: [687, 688, 689, 687, 688, 690], days: [691, 692, 691, 693, 691, 692, 691, 693], eras: [118, 694, 201], dates: 93, numbers: 37, direction: .leftToRight)

        case "so-ET": CLDR.Record(months: [687, 688, 689, 687, 688, 690], days: [691, 692, 691, 693, 691, 692, 691, 693], eras: [118, 694, 201], dates: 93, numbers: 37, direction: .leftToRight)

        case "so-KE": CLDR.Record(months: [687, 688, 689, 687, 688, 690], days: [691, 692, 691, 693, 691, 692, 691, 693], eras: [118, 694, 201], dates: 93, numbers: 37, direction: .leftToRight)

        case "sq": CLDR.Record(months: [695, 696, 697, 695, 696, 697], days: [698, 699, 698, 700, 698, 699, 698, 700], eras: [701, 702, 701], dates: 94, numbers: 8, direction: .leftToRight)

        case "sq-MK": CLDR.Record(months: [695, 696, 697, 695, 696, 697], days: [698, 699, 698, 700, 698, 699, 698, 700], eras: [701, 702, 701], dates: 94, numbers: 8, direction: .leftToRight)

        case "sq-XK": CLDR.Record(months: [695, 696, 697, 695, 696, 697], days: [698, 699, 698, 700, 698, 699, 698, 700], eras: [701, 702, 701], dates: 94, numbers: 8, direction: .leftToRight)

        case "sr": CLDR.Record(months: [703, 516, 704, 703, 516, 704], days: [705, 706, 707, 708, 705, 706, 707, 708], eras: [709, 710, 711], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Cyrl": CLDR.Record(months: [703, 516, 704, 703, 516, 704], days: [705, 706, 707, 708, 705, 706, 707, 708], eras: [709, 710, 711], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Cyrl-BA": CLDR.Record(months: [703, 516, 704, 703, 516, 704], days: [712, 706, 707, 713, 712, 706, 707, 713], eras: [709, 714, 711], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Cyrl-ME": CLDR.Record(months: [715, 516, 704, 715, 516, 704], days: [705, 706, 707, 716, 705, 706, 707, 716], eras: [709, 714, 711], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Cyrl-XK": CLDR.Record(months: [715, 516, 704, 715, 516, 704], days: [705, 706, 707, 708, 705, 706, 707, 708], eras: [709, 710, 711], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Latn": CLDR.Record(months: [717, 94, 718, 717, 94, 718], days: [719, 98, 720, 721, 719, 98, 720, 721], eras: [99, 722, 617], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Latn-BA": CLDR.Record(months: [717, 94, 718, 717, 94, 718], days: [95, 98, 720, 97, 95, 98, 720, 97], eras: [99, 100, 617], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Latn-ME": CLDR.Record(months: [723, 94, 718, 723, 94, 718], days: [719, 98, 720, 724, 719, 98, 720, 724], eras: [99, 100, 617], dates: 95, numbers: 7, direction: .leftToRight)

        case "sr-Latn-XK": CLDR.Record(months: [723, 94, 718, 723, 94, 718], days: [719, 98, 720, 721, 719, 98, 720, 721], eras: [99, 722, 617], dates: 95, numbers: 7, direction: .leftToRight)

        case "sv": CLDR.Record(months: [725, 1, 726, 725, 1, 726], days: [727, 153, 728, 729, 727, 153, 728, 729], eras: [156, 730, 156], dates: 48, numbers: 28, direction: .leftToRight)

        case "sv-AX": CLDR.Record(months: [725, 1, 726, 725, 1, 726], days: [727, 153, 728, 729, 727, 153, 728, 729], eras: [156, 730, 156], dates: 96, numbers: 28, direction: .leftToRight)

        case "sv-FI": CLDR.Record(months: [725, 1, 726, 725, 1, 726], days: [727, 153, 728, 729, 727, 153, 728, 729], eras: [156, 730, 156], dates: 97, numbers: 28, direction: .leftToRight)

        case "sw": CLDR.Record(months: [731, 1, 732, 731, 1, 732], days: [733, 197, 733, 733, 733, 197, 733, 733], eras: [734, 735, 734], dates: 19, numbers: 1, direction: .leftToRight)

        case "sw-CD": CLDR.Record(months: [731, 1, 732, 731, 1, 732], days: [733, 197, 733, 733, 733, 197, 733, 733], eras: [734, 735, 734], dates: 19, numbers: 7, direction: .leftToRight)

        case "sw-KE": CLDR.Record(months: [731, 1, 732, 731, 1, 732], days: [733, 197, 733, 733, 733, 197, 733, 733], eras: [734, 735, 734], dates: 19, numbers: 1, direction: .leftToRight)

        case "sw-UG": CLDR.Record(months: [731, 1, 732, 731, 1, 732], days: [733, 197, 733, 733, 733, 197, 733, 733], eras: [734, 735, 734], dates: 19, numbers: 1, direction: .leftToRight)

        case "ta": CLDR.Record(months: [736, 737, 738, 736, 737, 738], days: [739, 740, 740, 741, 739, 740, 740, 741], eras: [742, 743, 742], dates: 8, numbers: 9, direction: .leftToRight)

        case "ta-LK": CLDR.Record(months: [736, 737, 738, 736, 737, 738], days: [739, 740, 740, 741, 739, 740, 740, 741], eras: [742, 743, 742], dates: 8, numbers: 9, direction: .leftToRight)

        case "ta-MY": CLDR.Record(months: [736, 737, 738, 736, 737, 738], days: [739, 740, 740, 741, 739, 740, 740, 741], eras: [742, 743, 742], dates: 8, numbers: 1, direction: .leftToRight)

        case "ta-SG": CLDR.Record(months: [736, 737, 738, 736, 737, 738], days: [739, 740, 740, 741, 739, 740, 740, 741], eras: [742, 743, 742], dates: 8, numbers: 1, direction: .leftToRight)

        case "te": CLDR.Record(months: [744, 745, 746, 744, 745, 746], days: [747, 748, 749, 750, 747, 748, 749, 750], eras: [751, 752, 751], dates: 98, numbers: 9, direction: .leftToRight)

        case "th": CLDR.Record(months: [753, 753, 754, 753, 753, 754], days: [755, 756, 757, 758, 755, 756, 757, 758], eras: [759, 760, 759], dates: 99, numbers: 1, direction: .leftToRight)

        case "tk": CLDR.Record(months: [761, 762, 763, 764, 762, 765], days: [766, 767, 768, 769, 770, 767, 771, 772], eras: [773, 774, 773], dates: 100, numbers: 38, direction: .leftToRight)

        case "tr": CLDR.Record(months: [775, 776, 777, 775, 776, 777], days: [778, 779, 780, 781, 778, 779, 780, 781], eras: [782, 783, 782], dates: 101, numbers: 7, direction: .leftToRight)

        case "tr-CY": CLDR.Record(months: [775, 776, 777, 775, 776, 777], days: [778, 779, 780, 781, 778, 779, 780, 781], eras: [782, 783, 782], dates: 101, numbers: 7, direction: .leftToRight)

        case "uk": CLDR.Record(months: [784, 785, 786, 784, 787, 788], days: [71, 789, 71, 790, 71, 789, 71, 790], eras: [791, 792, 793], dates: 102, numbers: 0, direction: .leftToRight)

        case "und": CLDR.Record(months: [794, 121, 794, 794, 121, 794], days: [196, 197, 196, 196, 196, 197, 196, 196], eras: [795, 795, 795], dates: 90, numbers: 1, direction: .leftToRight)

        case "ur": CLDR.Record(months: [796, 250, 796, 796, 797, 796], days: [798, 799, 798, 798, 798, 799, 798, 798], eras: [800, 800, 800], dates: 103, numbers: 20, direction: .rightToLeft)

        case "ur-IN": CLDR.Record(months: [796, 250, 796, 796, 797, 796], days: [798, 799, 798, 798, 798, 799, 798, 798], eras: [800, 800, 800], dates: 103, numbers: 32, direction: .rightToLeft)

        case "uz": CLDR.Record(months: [801, 802, 803, 804, 802, 805], days: [806, 807, 808, 809, 806, 807, 808, 809], eras: [810, 811, 810], dates: 104, numbers: 39, direction: .leftToRight)

        case "uz-Latn": CLDR.Record(months: [801, 802, 803, 804, 802, 805], days: [806, 807, 808, 809, 806, 807, 808, 809], eras: [810, 811, 810], dates: 104, numbers: 39, direction: .leftToRight)

        case "vi": CLDR.Record(months: [812, 121, 813, 814, 121, 814], days: [815, 816, 816, 817, 815, 816, 816, 817], eras: [818, 819, 820], dates: 8, numbers: 7, direction: .leftToRight)

        case "yo": CLDR.Record(months: [821, 822, 821, 821, 822, 821], days: [823, 824, 823, 825, 823, 824, 823, 823], eras: [826, 827, 826], dates: 105, numbers: 1, direction: .leftToRight)

        case "yo-BJ": CLDR.Record(months: [828, 829, 828, 828, 829, 828], days: [830, 831, 830, 832, 830, 831, 830, 830], eras: [826, 833, 826], dates: 105, numbers: 1, direction: .leftToRight)

        case "yue": CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [834, 835, 835, 834, 834, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 40, direction: .leftToRight)

        case "yue-Hans": CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [834, 835, 835, 834, 834, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 41, direction: .leftToRight)

        case "yue-Hant": CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [834, 835, 835, 834, 834, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 40, direction: .leftToRight)

        case "yue-Hant-CN":
            CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [834, 835, 835, 834, 834, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 40, direction: .leftToRight)

        case "yue-Hant-MO":
            CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [834, 835, 835, 834, 834, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 40, direction: .leftToRight)

        case "zh": CLDR.Record(months: [409, 121, 837, 409, 121, 837], days: [838, 835, 838, 834, 838, 835, 838, 834], eras: [839, 839, 839], dates: 107, numbers: 1, direction: .leftToRight)

        case "zh-Hans": CLDR.Record(months: [409, 121, 837, 409, 121, 837], days: [838, 835, 838, 834, 838, 835, 838, 834], eras: [839, 839, 839], dates: 107, numbers: 1, direction: .leftToRight)

        case "zh-Hans-HK":
            CLDR.Record(months: [409, 121, 837, 409, 121, 837], days: [838, 835, 838, 834, 838, 835, 838, 834], eras: [839, 839, 839], dates: 108, numbers: 1, direction: .leftToRight)

        case "zh-Hans-MO":
            CLDR.Record(months: [409, 121, 837, 409, 121, 837], days: [838, 835, 838, 834, 838, 835, 838, 834], eras: [839, 839, 839], dates: 108, numbers: 1, direction: .leftToRight)

        case "zh-Hans-MY":
            CLDR.Record(months: [409, 121, 837, 409, 121, 837], days: [838, 835, 838, 834, 838, 835, 838, 834], eras: [839, 839, 839], dates: 107, numbers: 1, direction: .leftToRight)

        case "zh-Hans-SG":
            CLDR.Record(months: [409, 121, 837, 409, 121, 837], days: [838, 835, 838, 834, 838, 835, 838, 834], eras: [839, 839, 839], dates: 109, numbers: 1, direction: .leftToRight)

        case "zh-Hant": CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [840, 835, 835, 834, 840, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 40, direction: .leftToRight)

        case "zh-Hant-HK":
            CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [840, 835, 835, 834, 840, 835, 835, 834], eras: [839, 839, 839], dates: 110, numbers: 40, direction: .leftToRight)

        case "zh-Hant-MO":
            CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [840, 835, 835, 834, 840, 835, 835, 834], eras: [839, 839, 839], dates: 110, numbers: 40, direction: .leftToRight)

        case "zh-Hant-MY":
            CLDR.Record(months: [409, 121, 409, 409, 121, 409], days: [840, 835, 835, 834, 840, 835, 835, 834], eras: [836, 836, 836], dates: 106, numbers: 40, direction: .leftToRight)

        case "zu": CLDR.Record(months: [841, 842, 843, 841, 1, 843], days: [844, 845, 844, 846, 844, 845, 844, 846], eras: [118, 118, 118], dates: 24, numbers: 1, direction: .leftToRight)

        default: nil
        }
    }

    static let root = CLDR.Record(months: [794, 121, 794, 794, 121, 794], days: [196, 197, 196, 196, 196, 197, 196, 196], eras: [795, 795, 795], dates: 90, numbers: 1, direction: .leftToRight)

    static let identifiers: [String] = [
        "af",
        "af-NA",
        "ak",
        "am",
        "ar",
        "ar-AE",
        "ar-BH",
        "ar-DJ",
        "ar-DZ",
        "ar-EG",
        "ar-EH",
        "ar-ER",
        "ar-IL",
        "ar-IQ",
        "ar-JO",
        "ar-KM",
        "ar-KW",
        "ar-LB",
        "ar-LY",
        "ar-MA",
        "ar-MR",
        "ar-OM",
        "ar-PS",
        "ar-QA",
        "ar-SA",
        "ar-SD",
        "ar-SO",
        "ar-SS",
        "ar-SY",
        "ar-TD",
        "ar-TN",
        "ar-YE",
        "as",
        "az",
        "az-Latn",
        "be",
        "be-tarask",
        "bg",
        "bn",
        "bn-IN",
        "bs",
        "bs-Latn",
        "ca",
        "ca-AD",
        "ca-ES-valencia",
        "ca-FR",
        "ca-IT",
        "chr",
        "cs",
        "cv",
        "cy",
        "da",
        "da-GL",
        "de",
        "de-AT",
        "de-BE",
        "de-CH",
        "de-IT",
        "de-LI",
        "de-LU",
        "dsb",
        "el",
        "el-CY",
        "el-polyton",
        "en",
        "en-001",
        "en-150",
        "en-AE",
        "en-AG",
        "en-AI",
        "en-AS",
        "en-AT",
        "en-AU",
        "en-BB",
        "en-BE",
        "en-BI",
        "en-BM",
        "en-BS",
        "en-BW",
        "en-BZ",
        "en-CA",
        "en-CC",
        "en-CH",
        "en-CK",
        "en-CM",
        "en-CX",
        "en-CY",
        "en-CZ",
        "en-DE",
        "en-DG",
        "en-DK",
        "en-DM",
        "en-EE",
        "en-ER",
        "en-ES",
        "en-FI",
        "en-FJ",
        "en-FK",
        "en-FM",
        "en-FR",
        "en-GB",
        "en-GD",
        "en-GE",
        "en-GG",
        "en-GH",
        "en-GI",
        "en-GM",
        "en-GS",
        "en-GU",
        "en-GY",
        "en-HK",
        "en-HU",
        "en-ID",
        "en-IE",
        "en-IL",
        "en-IM",
        "en-IN",
        "en-IO",
        "en-IT",
        "en-JE",
        "en-JM",
        "en-JP",
        "en-KE",
        "en-KI",
        "en-KN",
        "en-KY",
        "en-LC",
        "en-LR",
        "en-LS",
        "en-LT",
        "en-LV",
        "en-MG",
        "en-MH",
        "en-MO",
        "en-MP",
        "en-MS",
        "en-MT",
        "en-MU",
        "en-MV",
        "en-MW",
        "en-MY",
        "en-NA",
        "en-NF",
        "en-NG",
        "en-NL",
        "en-NO",
        "en-NR",
        "en-NU",
        "en-NZ",
        "en-PG",
        "en-PH",
        "en-PK",
        "en-PL",
        "en-PN",
        "en-PR",
        "en-PT",
        "en-PW",
        "en-RO",
        "en-RW",
        "en-SB",
        "en-SC",
        "en-SD",
        "en-SE",
        "en-SG",
        "en-SH",
        "en-SI",
        "en-SK",
        "en-SL",
        "en-SS",
        "en-SX",
        "en-SZ",
        "en-TC",
        "en-TK",
        "en-TO",
        "en-TT",
        "en-TV",
        "en-TZ",
        "en-UA",
        "en-UG",
        "en-UM",
        "en-VC",
        "en-VG",
        "en-VI",
        "en-VU",
        "en-WS",
        "en-ZA",
        "en-ZM",
        "en-ZW",
        "es",
        "es-419",
        "es-AR",
        "es-BO",
        "es-BR",
        "es-BZ",
        "es-CL",
        "es-CO",
        "es-CR",
        "es-CU",
        "es-DO",
        "es-EA",
        "es-EC",
        "es-GQ",
        "es-GT",
        "es-HN",
        "es-IC",
        "es-MX",
        "es-NI",
        "es-PA",
        "es-PE",
        "es-PH",
        "es-PR",
        "es-PY",
        "es-SV",
        "es-US",
        "es-UY",
        "es-VE",
        "et",
        "eu",
        "fa",
        "fa-AF",
        "fi",
        "fil",
        "fr",
        "fr-BE",
        "fr-BF",
        "fr-BI",
        "fr-BJ",
        "fr-BL",
        "fr-CA",
        "fr-CD",
        "fr-CF",
        "fr-CG",
        "fr-CH",
        "fr-CI",
        "fr-CM",
        "fr-DJ",
        "fr-DZ",
        "fr-GA",
        "fr-GF",
        "fr-GN",
        "fr-GP",
        "fr-GQ",
        "fr-HT",
        "fr-KM",
        "fr-LU",
        "fr-MA",
        "fr-MC",
        "fr-MF",
        "fr-MG",
        "fr-ML",
        "fr-MQ",
        "fr-MR",
        "fr-MU",
        "fr-NC",
        "fr-NE",
        "fr-PF",
        "fr-PM",
        "fr-RE",
        "fr-RW",
        "fr-SC",
        "fr-SN",
        "fr-SY",
        "fr-TD",
        "fr-TG",
        "fr-TN",
        "fr-VU",
        "fr-WF",
        "fr-YT",
        "ga",
        "ga-GB",
        "gd",
        "gl",
        "gu",
        "ha",
        "ha-GH",
        "ha-NE",
        "he",
        "hi",
        "hi-Latn",
        "hr",
        "hr-BA",
        "hsb",
        "hu",
        "hy",
        "id",
        "ig",
        "is",
        "it",
        "it-CH",
        "it-SM",
        "it-VA",
        "ja",
        "jv",
        "ka",
        "kk",
        "kk-Arab",
        "kk-Cyrl",
        "kk-KZ",
        "km",
        "kn",
        "ko",
        "ko-CN",
        "ko-KP",
        "kok",
        "kok-Deva",
        "ky",
        "lo",
        "lt",
        "lv",
        "mk",
        "ml",
        "mn",
        "mr",
        "ms",
        "ms-BN",
        "ms-ID",
        "ms-SG",
        "my",
        "ne",
        "ne-IN",
        "nl",
        "nl-AW",
        "nl-BE",
        "nl-BQ",
        "nl-CW",
        "nl-SR",
        "nl-SX",
        "nn",
        "no",
        "or",
        "pa",
        "pa-Guru",
        "pcm",
        "pl",
        "ps",
        "ps-PK",
        "pt",
        "pt-AO",
        "pt-CH",
        "pt-CV",
        "pt-GQ",
        "pt-GW",
        "pt-LU",
        "pt-MO",
        "pt-MZ",
        "pt-PT",
        "pt-ST",
        "pt-TL",
        "qu",
        "qu-BO",
        "qu-EC",
        "ro",
        "ro-MD",
        "ru",
        "ru-BY",
        "ru-KG",
        "ru-KZ",
        "ru-MD",
        "ru-UA",
        "sd",
        "sd-Arab",
        "si",
        "sk",
        "sl",
        "so",
        "so-DJ",
        "so-ET",
        "so-KE",
        "sq",
        "sq-MK",
        "sq-XK",
        "sr",
        "sr-Cyrl",
        "sr-Cyrl-BA",
        "sr-Cyrl-ME",
        "sr-Cyrl-XK",
        "sr-Latn",
        "sr-Latn-BA",
        "sr-Latn-ME",
        "sr-Latn-XK",
        "sv",
        "sv-AX",
        "sv-FI",
        "sw",
        "sw-CD",
        "sw-KE",
        "sw-UG",
        "ta",
        "ta-LK",
        "ta-MY",
        "ta-SG",
        "te",
        "th",
        "tk",
        "tr",
        "tr-CY",
        "uk",
        "und",
        "ur",
        "ur-IN",
        "uz",
        "uz-Latn",
        "vi",
        "yo",
        "yo-BJ",
        "yue",
        "yue-Hans",
        "yue-Hant",
        "yue-Hant-CN",
        "yue-Hant-MO",
        "zh",
        "zh-Hans",
        "zh-Hans-HK",
        "zh-Hans-MO",
        "zh-Hans-MY",
        "zh-Hans-SG",
        "zh-Hant",
        "zh-Hant-HK",
        "zh-Hant-MO",
        "zh-Hant-MY",
        "zu",
    ]
}
