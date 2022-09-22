class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var profit = 0
        
        var left = 0
        var right = 1
        
        while right < prices.count {
            let buy = prices[left]
            let sell = prices[right]
            
            if buy > sell {
                left = right
            } else {
                let currentProfit = (sell - buy)
                profit = max(profit, currentProfit)
            }
            
            right += 1
        }
        
        return profit
    }
}