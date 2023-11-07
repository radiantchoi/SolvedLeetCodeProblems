class Solution {
    func tribonacci(_ n: Int) -> Int {
        var result = [0, 1, 1]
        
        if n > 2 {
            for i in 3...n {
                result.append(result[i-3] + result[i-2] + result[i-1])
            }
        }
        
        return result[n]
    }
}