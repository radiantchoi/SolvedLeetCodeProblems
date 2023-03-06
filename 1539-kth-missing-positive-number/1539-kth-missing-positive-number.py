class Solution:
    def findKthPositive(self, arr: List[int], k: int) -> int:
        result = []
        
        for i in range(1, 2001):
            if i not in arr:
                result.append(i)
            
            if len(result) == k:
                break
        
        return result[-1]