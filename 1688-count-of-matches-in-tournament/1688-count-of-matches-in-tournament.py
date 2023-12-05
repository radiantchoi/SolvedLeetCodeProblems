class Solution:
    def numberOfMatches(self, n: int) -> int:
        games = 0
        
        while n > 1:
            advanced, oddity = divmod(n, 2)
            games += advanced
            
            n = advanced
            n += oddity
        
        return games