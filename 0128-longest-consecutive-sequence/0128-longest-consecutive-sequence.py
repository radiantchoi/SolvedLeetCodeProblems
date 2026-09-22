import heapq

class Solution:
    def longestConsecutive(self, nums: list[int]) -> int:
        board = []
        nums = list(set(nums))

        for num in nums:
            heapq.heappush(board, num)
        
        result = 0
        maximum = 0
        current = -1234567890

        while board:
            val = heapq.heappop(board)

            if val == current + 1:
                result += 1
            else:
                maximum = max(maximum, result)
                result = 1
            
            current = val
        
        maximum = max(maximum, result)
        return maximum