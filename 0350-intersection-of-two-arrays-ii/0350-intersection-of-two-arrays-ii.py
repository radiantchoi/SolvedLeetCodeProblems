class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        occ1 = {}
        for n in nums1:
            occ1[n] = occ1.get(n, 0) + 1
        
        occ2 = {}
        for n in nums2:
            occ2[n] = occ2.get(n, 0) + 1
            
            
        result = []
        criteria = list(set(nums1))
        for n in criteria:
            num1 = occ1.get(n, 0)
            num2 = occ2.get(n, 0)
            occurence = min(num1, num2)
            
            if occurence > 0:
                for _ in range(occurence):
                    result.append(n)
        
        return result