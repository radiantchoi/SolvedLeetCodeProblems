class Solution:
    def sumOfUnique(self, nums: List[int]) -> int:
        occ = {}
        
        for n in nums:
            occ[n] = occ.get(n, 0) + 1
        
        unique = list(filter(lambda x: occ[x] == 1, occ.keys()))
        
        return sum(unique)