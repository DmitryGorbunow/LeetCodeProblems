import Foundation


func getRow(_ rowIndex: Int) -> [Int] {
    var currRow = [1]
    var prRow = [Int]()
    
    for i in 1..<rowIndex + 1 {
        prRow = currRow
        currRow.removeAll()
        currRow.append(1)

        for j in 1..<i {
            let sum = prRow[j] + prRow[j - 1]
            currRow.append(sum)
        }
        currRow.append(1)
    }
    return currRow
}

print(getRow(3))
