class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var costs = [cost[0], cost[1]]
        
        if cost.count > 2 {
            for i in 2..<cost.count {
                let newCost = cost[i] + min(costs[i-1], costs[i-2])
                costs.append(newCost)
            }
        }
        
        return min(costs[costs.count - 1], costs[costs.count - 2])
    }
}