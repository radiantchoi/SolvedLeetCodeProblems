class Solution:
    def findKthPositive(self, arr: List[int], k: int) -> int:
        result = []
        index = 0
        current = 1
        
        while index < len(arr) and len(result) < k:
            if current < arr[index]:
                result.append(current)
            else:
                index += 1
            
            current += 1
        
        while len(result) < k:
            result.append(current)
            current += 1
        
        return result[-1]
        