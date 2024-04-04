class Solution {
    func maxDepth(_ s: String) -> Int {
        let letters = s.map { String($0) }
        
        var maxDepth = 0
        var currentDepth = 0
        
        for letter in letters {
            if letter == "(" {
                currentDepth += 1
            } else if letter == ")" {
                currentDepth -= 1
            }
            
            maxDepth = max(maxDepth, currentDepth)
        }
        
        return maxDepth
    }
}