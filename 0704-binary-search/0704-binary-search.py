from bisect import bisect_left, bisect_right

class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # bisect의 뜻 : 해당 배열에서 타겟이 들어갈 수 있는 왼쪽/오른쪽 인덱스
        
        if bisect_left(nums, target) == bisect_right(nums, target):
            return -1
        
        return bisect_left(nums, target)