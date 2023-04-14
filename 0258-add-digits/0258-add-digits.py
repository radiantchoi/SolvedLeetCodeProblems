class Solution:
    def addDigits(self, num: int) -> int:
        if num // 10 == 0:
            return num
        
        string = str(num)
        digits = list(string)
        nums = map(lambda x: int(x), digits)
        
        return self.addDigits(sum(nums))