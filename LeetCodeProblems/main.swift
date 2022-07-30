import Foundation

let nums = [1,3,5,6,8,13]
let target = 7

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    var insertPosition = 0
    
    while low <= high {
        
        let mid = (low + high) / 2
        let guess = nums[mid]
        
        if guess == target {
            return mid
        }
        
        if guess > target {
            high = mid - 1
            insertPosition = mid
        } else {
            low = mid + 1
            insertPosition = mid + 1
        }
    }
    return insertPosition
}

print(searchInsert(nums, target))


