class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let words = s.components(separatedBy: " ").filter { !$0.isEmpty } 
        
        return words[words.count - 1].count
    }
}