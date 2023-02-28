class Solution:
    def applyOperations(self, nums: List[int]) -> List[int]:
        result = nums
        
        for i in range(len(result)-1):
            if result[i] == result[i+1]:
                result[i] *= 2
                result[i+1] = 0
        
        result = list(filter(lambda x: x > 0, result))
        
        zeroes = [0] * (len(nums) - len(result))
        
        return result + zeroes