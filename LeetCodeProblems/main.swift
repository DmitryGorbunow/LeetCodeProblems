import Foundation

let a = "1010"
var b = "1011"

func addBinary(_ a: String, _ b: String) -> String {
    let la = a.count
    let lb = b.count
    var aArr = Array(a)
    var bArr = Array(b)
    if la > lb {
        bArr = Array(repeating: "0", count: (la - lb)) + bArr
    } else {
        aArr = Array(repeating: "0", count: (lb - la)) + aArr
    }
    var result = [Int]()
    var carry = 0
    for i in stride(from: aArr.count - 1, to: -1, by: -1) {
        let curr = Int(String(aArr[i]))! + Int(String(bArr[i]))! + carry
        carry = 0
        if curr < 2 {
            result.insert(curr, at: 0)
        } else if curr < 3 {
            result.insert(0, at: 0)
            carry = 1
        } else {
            result.insert(1, at: 0)
            carry = 1
        }
    }
    if carry != 0 {
        result.insert(carry, at: 0)
    }
    let otv = result.map { String ($0) }
    
    print(aArr)
    print(bArr)
    return otv.joined(separator: "")
}

print(addBinary(a, b))

