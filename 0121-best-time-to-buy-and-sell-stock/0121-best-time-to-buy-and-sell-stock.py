class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        profit = 0
        current_minimum = prices[0]
        current_profit = 0

        for i in range(1, len(prices)):
            if prices[i] > current_minimum:
                current_profit = max(current_profit, prices[i] - current_minimum)
                profit = max(profit, current_profit)
            else:
                current_minimum = prices[i]
        
        return profit