import heapq

class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        pq = []
        
        for num in nums:
            heapq.heappush(pq, num ** 2)
        
        result = []
        while pq:
            result.append(heapq.heappop(pq))
        
        return result