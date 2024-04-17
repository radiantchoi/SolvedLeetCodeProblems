class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buying = prices[0]
        var result = 0
        
        for price in prices {
            if price < buying {
                buying = price
            } else if result < (price - buying) {
                result = price - buying
            }
        }
        
        return result
    }
}