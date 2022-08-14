let numRows = 5
func generate(_ numRows: Int) -> [[Int]] {
    var result = [[1]]
    
    for i in 1..<numRows {
        let prRow = result[i-1]
        var currRow = [1]
        
        for j in 1..<i {
            let firstNum = prRow[j-1]
            let secondNum = prRow[j]
            currRow.append(firstNum + secondNum)
        }
        currRow.append(1)
        result.append(currRow)
    }
    return result
}

print(generate(5))
