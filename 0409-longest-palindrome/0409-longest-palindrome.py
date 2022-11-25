class Solution:
    def longestPalindrome(self, s: str) -> int:
        o = {}
        
        for i in range(len(s)):
            o[s[i]] = o.get(s[i], 0) + 1
        
        numbers = list(o.values())
        evens = list(filter(lambda x: x % 2 == 0, numbers))
        odds = list(filter(lambda x: x % 2 == 1, numbers))
        
        result = 0
        if evens:
            result += sum(evens)
            
        if odds:
            gross = sum(odds)
            maximum = max(odds)
            gross -= maximum
            
            if gross != 0 :
                gross -= len(odds) - 1
            
            result += gross
            result += maximum
            
        return result