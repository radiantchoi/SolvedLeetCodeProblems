class Solution {
    func reverseWords(_ s: String) -> String {
        return s.components(separatedBy: " ").map { reverseWord($0) }.joined(separator: " ")
    }
    
    func reverseWord(_ word: String) -> String {
        return word.map { String($0) }.reversed().joined()
    }
}