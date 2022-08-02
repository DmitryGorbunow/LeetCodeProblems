import Foundation

let s = "   Hello Worlderte   "

//func lengthOfLastWord(_ s: String) -> Int {
//    var counter = 0
//    let rev = String(s.reversed())
//    for i in rev {
//        if i == " " {
//            break
//        }
//        counter += 1
//    }
//    return counter
//}
//
//print(lengthOfLastWord(s))



func lengthOfLastWord(_ s: String) -> Int {
    let arr = s.split(separator: " ")
    return arr[0].count
}

print(lengthOfLastWord(s))
