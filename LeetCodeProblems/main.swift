import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var start = 0
    var end = 0
    var maxProfit = 0

    while end <= prices.count-1 {
        let startP = prices[start]
        let endP = prices[end]
        let profit = endP - startP
        
        if startP > endP {
            start += 1
        } else {
            maxProfit = max(maxProfit, profit)
            end += 1
        }
    }
    return maxProfit
}

print(maxProfit([7,1,5,3,6,4]))


