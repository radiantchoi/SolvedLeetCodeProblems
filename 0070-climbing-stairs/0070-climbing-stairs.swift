class Solution {
    func climbStairs(_ n: Int) -> Int {
        var memo = [1, 1]
        
        if n > 1 {
            for i in 2...n {
                memo.append(memo[i-1] + memo[i-2])
            }
        }
        
        return memo[n]
    }
}