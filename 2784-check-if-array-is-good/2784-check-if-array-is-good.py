class Solution:
    def isGood(self, nums: List[int]) -> bool:
        occurences = {}

        for num in nums:
            occurences[num] = occurences.get(num, 0) + 1
        
        threshold = len(nums) - 1
        number = 1

        while number < threshold:
            if occurences.get(number, 0) != 1:
                return False
            
            number += 1
        
        if occurences.get(number, 0) != 2:
            return False
        
        return True