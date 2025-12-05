from collections import deque

class Solution:
    def coinChange(self, coins: List[int], amount: int) -> int:
        dp = [-1 for _ in range(amount + 1)]
        
        dp[0] = 0
        q = deque([[0, 0]])

        while q:
            current = q.popleft()

            for coin in coins:
                estimated = current[1] + coin

                if estimated <= amount and dp[estimated] == -1:
                    used = current[0] + 1
                    dp[estimated] = used

                    new = [used, estimated]
                    q.append(new)

        return dp[amount]