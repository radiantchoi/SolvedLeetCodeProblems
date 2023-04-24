class Solution:
    def minCostClimbingStairs(self, cost: List[int]) -> int:
        climbs = [cost[0], cost[1]]
        
        if len(cost) > 2:
            for i in range(2, len(cost)):
                prev = climbs[(i-2):i]
                climbs.append(min(prev) + cost[i])
        
        return min(climbs[-1], climbs[-2])