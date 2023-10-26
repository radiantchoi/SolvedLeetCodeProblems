class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var letters = Array(s.map { String($0) }.reversed())
        var index = 0
        
        var spread = t.map { String($0) }
        
        while !letters.isEmpty && index < spread.count {
            let letter = letters[letters.count-1]
            
            if spread[index] == letter {
                letters.removeLast()
            }
            
            index += 1
        } 
        
        return letters.isEmpty ? true : false
    }
}