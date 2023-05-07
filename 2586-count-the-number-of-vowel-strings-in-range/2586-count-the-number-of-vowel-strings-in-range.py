class Solution:
    def vowelStrings(self, words: List[str], left: int, right: int) -> int:
        vowels = ["a", "e", "i", "o", "u"]
        
        return len(list(filter(lambda x: x[0] in vowels and x[-1] in vowels, words[left:right+1])))