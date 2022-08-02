import Foundation

let digits = [8, 9, 9]

func plusOne(_ digits: [Int]) -> [Int] {

    var result = digits
    var index = result.count - 1
    
    while result[index] == 9 {
        result[index] = 0
        index -= 1
        
        if index < 0 {
            result.insert(1, at: 0)
            break
        }
    }
    
    if index >= 0 {
        result[index] += 1
    }
    

    return result

    
}

print(plusOne(digits))


