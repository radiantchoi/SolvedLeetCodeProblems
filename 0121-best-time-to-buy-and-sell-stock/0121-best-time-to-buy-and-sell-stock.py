class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        minimum = prices[0]
        maximum = prices[0]
        log = []
        
        for i in range(1, len(prices)):
            if prices[i] < minimum:
                log.append(maximum - minimum)
                minimum = prices[i]
                maximum = minimum
            elif prices[i] > maximum:
                maximum = prices[i]
        
        log.append(maximum - minimum)
        return max(log)
                