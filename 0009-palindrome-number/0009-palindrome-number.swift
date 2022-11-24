class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let spread = String(x).map { String($0) }
        var left = 0
        var right = spread.count - 1
        
        while left < right {
            guard spread[left] == spread[right] else {
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
    }
}