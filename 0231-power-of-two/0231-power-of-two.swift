class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 0 {
            return false
        } else if n == 1 {
            return true
        } else if n % 2 != 0 {
            return false
        }
        
        return isPowerOfTwo(n / 2)
    }
}