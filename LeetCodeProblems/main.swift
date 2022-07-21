import Foundation

var array = [0,1,2,2,3,0,4,2]
let val = 2

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var k = 0
    for i in 0..<nums.count {
        if nums[i] != val {
            nums[k] = nums[i]
            k += 1
        }
    }
    print(nums)
    return k
}


print(removeElement(&array, val))
