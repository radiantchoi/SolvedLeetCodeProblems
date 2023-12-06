class Solution:
    def totalMoney(self, n: int) -> int:
        result = 0
        
        for m in range(1, n+1):
            d, r = divmod(m, 7)
            result += d
            
            if r == 0:
                result += 6
            else:
                result += r
        
        return result