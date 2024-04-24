class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var n = n
        var result = 0
        
        while n > 0 {
            let (div, mod) = n.quotientAndRemainder(dividingBy: 2)
            if mod == 1 {
                result += 1
            }
            
            n = div
        }
        
        return result
    }
}