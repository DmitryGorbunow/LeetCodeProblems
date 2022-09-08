import Foundation

//func convertToTitle(_ columnNumber: Int) -> String {
//    let dict: [Int: Character] = [1: "A", 2: "B", 3: "C", 4: "D", 5: "E", 6: "F", 7: "G", 8: "H", 9: "I", 10: "J", 11: "K", 12: "L", 13: "M", 14: "N", 15: "O", 16: "P", 17: "Q", 18: "R", 19: "S", 20: "T", 21: "U", 22: "V", 23: "W", 24: "X", 25: "Y", 0: "Z"]
//
//    var result = ""
//    var newColumnNumber = columnNumber
//
//    while newColumnNumber > 0 {
//        result.append(dict[newColumnNumber % 26]!)
//        newColumnNumber = (newColumnNumber - 1) / 26
//    }
//
//    return String(result.reversed())
//}
//
//print(convertToTitle(701))



func titleToNumber(_ columnTitle: String) -> Int {
    var result = 0

    for i in 0..<columnTitle.count {
        result = result * 26 + letterIndex(columnTitle[columnTitle.index(columnTitle.startIndex, offsetBy: i)])
    }

    return result
}
      
func letterIndex(_ letter: Character) -> Int {
    return Int(letter.unicodeScalars.first!.value) - Int(Unicode.Scalar("A").value) + 1
}


print(titleToNumber("ABCD"))
// 19010




