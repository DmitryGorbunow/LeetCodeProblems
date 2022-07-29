import Foundation

let haystack = "h"
let needle = "h"

func strStr(_ haystack: String, _ needle: String) -> Int {

    guard !needle.isEmpty else { return 0 }
    guard haystack.count >= needle.count else { return -1 }

    var result = -1

    for i in 0...(haystack.count - needle.count) {
        if stringEquals(haystack: haystack, needle: needle, i: i) {
            result = i
            break
        }
    }

    return result
}

func stringEquals(haystack: String, needle: String, i: Int) -> Bool {
    let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
    let endIndex = haystack.index(haystack.startIndex, offsetBy: i + needle.count)
    return needle == haystack[startIndex..<endIndex]
}

print(strStr(haystack, needle))


