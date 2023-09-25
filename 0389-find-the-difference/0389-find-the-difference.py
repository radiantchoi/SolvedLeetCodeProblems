class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        original = dict()
        extended = dict()
        
        for letter in s:
            original[letter] = original.get(letter, 0) + 1
        
        for letter in t:
            extended[letter] = extended.get(letter, 0) + 1
        
        for letter in extended.keys():
            if letter not in original.keys():
                return letter
            elif original[letter] != extended[letter]:
                return letter