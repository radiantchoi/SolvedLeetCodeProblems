class Solution:
    def finalPrices(self, prices: List[int]) -> List[int]:
        for i in range(len(prices)-1):
            discount = 0
            
            for j in range(i+1, len(prices)):
                if prices[i] >= prices[j]:
                    discount = prices[j]
                    break
            
            prices[i] -= discount
        
        return prices