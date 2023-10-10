class Solution {
    func reverseWords(_ s: String) -> String {
        var words = s.components(separatedBy: " ").filter { !$0.isEmpty}
        print(words)
                
        for i in 0..<(words.count / 2) {
            let firstWord = words[i]
            let secondWord = words[words.count - 1 - i]
            
            words[i] = secondWord
            words[words.count - 1 - i] = firstWord
        }
        
        return words.joined(separator: " ")
    }
}