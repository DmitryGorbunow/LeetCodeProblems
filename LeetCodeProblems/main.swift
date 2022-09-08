import Foundation

class Solution {
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
    
    
}

let solution = Solution()

print(solution.titleToNumber("AB"))


