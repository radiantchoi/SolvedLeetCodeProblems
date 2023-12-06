class Solution {
    func totalMoney(_ n: Int) -> Int {
        var result = 0
        
        for m in 1...n {
            let div = m / 7
            let mod = m % 7
            
            result += div
            
            if mod == 0 {
                result += 6
            } else {
                result += mod
            }
        }
        
        return result
    }
}