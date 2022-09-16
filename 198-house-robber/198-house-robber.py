class Solution:
    def rob(self, nums: List[int]) -> int:
        if len(nums) > 2:
            for i in range(2, len(nums)):
                nums[i] += max(nums[:i-1])
        
        return max(nums)