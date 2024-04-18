class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = [""]
        var words = strs.map { word in word.map { String($0) } }
        
        let threshold = words.map { $0.count }.min()!
        if threshold == 0 {
            return ""
        }
        
        var current = 0
        var hold = words[0][0]
        
        while current < threshold {
            for word in words {
                if word[current] != hold {
                    return result.joined()
                }
            }
            
            current += 1
            result.append(hold)
            
            if current < threshold {
                hold = words[0][current]
            }
        }
        
        return result.joined()
    }
}