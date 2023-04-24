class Solution:
    def climbStairs(self, n: int) -> int:
        stairs = [1, 1]
        
        if n > 1:
            for i in range(1, n):
                stairs.append(stairs[i] + stairs[i-1])
            
        return stairs[n]