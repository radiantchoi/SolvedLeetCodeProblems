class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var letters = Array(s.lowercased()).filter { $0.isLetter || $0.isNumber }
        
        var leading = 0
        var trailing = letters.endIndex - 1
        
        while leading < trailing {
            if letters[leading] != letters[trailing] {
                return false
            }
            
            leading += 1
            trailing -= 1
        }
        
        return true
    }
}