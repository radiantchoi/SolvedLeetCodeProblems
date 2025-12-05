from collections import deque

class Solution:
    def coinChange(self, coins: List[int], amount: int) -> int:
        dp = [-1 for _ in range(amount + 1)]
        
        q = deque([[0, 0]])

        while q:
            current = q.popleft()

            if current[1] > amount:
                continue
            if dp[current[1]] > 0:
                continue

            dp[current[1]] = current[0]

            for coin in coins:
                new = [current[0] + 1, current[1] + coin]
                q.append(new)

        return dp[amount]