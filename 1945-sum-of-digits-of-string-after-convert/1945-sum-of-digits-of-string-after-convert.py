class Solution:
    def getLucky(self, s: str, k: int) -> int:
        converted = ""
        for letter in s:
            converted += str(ord(letter) - 96)
            
        converted = int(converted)
        
        def transform(n: int) -> int:
            if n // 10 == 0:
                return n
            
            string = str(n)
            digits = list(string)
            return reduce(lambda x,y: int(x) + int(y), digits)
        
        for _ in range(k):
            converted = transform(converted)
        
        return converted
        
        