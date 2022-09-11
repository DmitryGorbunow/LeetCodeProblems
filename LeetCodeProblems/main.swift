import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict1 = [Character: Int]()
        var dict2 = [Character: Int]()

        let baseCounts1 = zip(
            s, repeatElement(1,count: Int.max))
        dict1 = Dictionary(baseCounts1, uniquingKeysWith: +)
        
        let baseCounts2 = zip(
            t, repeatElement(1,count: Int.max))
        dict2 = Dictionary(baseCounts2, uniquingKeysWith: +)
        
        return dict1 == dict2
    }
}

let solution = Solution()

print(solution.isAnagram("anagram", "nagaram"))


