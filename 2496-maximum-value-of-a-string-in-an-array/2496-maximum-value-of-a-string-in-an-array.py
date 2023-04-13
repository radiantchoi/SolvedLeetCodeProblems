class Solution:
    def maximumValue(self, strs: List[str]) -> int:
        results = []
        
        for s in strs:
            length = len(s)
            result = length
            
            for i in range(length):
                if 96 < ord(s[i]) < 125:
                    break
                elif i == length - 1:
                    result = int(s)
            
            results.append(result)
        
        return max(results)