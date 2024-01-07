from collections import defaultdict

class Solution:
    def breakdown (self, n: int) -> int:
        if n % 3 == 0:
            return n // 3
        elif n % 3 == 2:
            return (n // 3) + 1
        elif n % 3 == 1 and n // 3 > 1:
            return ((n - 4) // 3) + 2
        elif n % 2 == 0:
            return n // 2
        else:
            return -1
    
    def minOperations(self, nums: List[int]) -> int:
        occ = defaultdict(int)
        
        for num in nums:
            occ[num] += 1
        
        result = 0
        for value in occ.values():
            breaked = self.breakdown(value)
            if breaked < 0:
                return -1
            else:
                result += breaked
        
        return result