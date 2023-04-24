class Solution:
    def rob(self, nums: List[int]) -> int:
        if len(nums) == 1:
            return nums[0]
        
        first = nums[:len(nums)-1]
        second = nums[1:]
        
        return max(self.swag(first), self.swag(second))
        
    def swag(self, nums: List[int]) -> int:
        if len(nums) > 2:
            for i in range(2, len(nums)):
                nums[i] += max(nums[:i-1])
            
        return max(nums)