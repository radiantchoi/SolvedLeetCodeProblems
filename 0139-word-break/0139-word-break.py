class Solution:
    def traverse(self, s: str, wordDict: List[str], starting: int, memo: Dict[int,bool]) -> bool:
        if starting == len(s):
            return True

        if starting in memo:
            return memo[starting]

        for word in wordDict:
            if s.startswith(word, starting):
                if self.traverse(s, wordDict, starting + len(word), memo):
                    return True
        
        memo[starting] = False
        return False


    def wordBreak(self, s: str, wordDict: List[str]) -> bool:
        memo = {} 
        result = False

        for word in wordDict:
            result = result or self.traverse(s, wordDict, 0, memo)

        return result