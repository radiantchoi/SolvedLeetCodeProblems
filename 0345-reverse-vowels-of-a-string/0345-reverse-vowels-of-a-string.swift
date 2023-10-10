class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
        var spread = s.map { String($0) }
        
        var indices = [Int]()
        
        for (index, letter) in spread.enumerated() {
            if vowels.contains(letter) {
                indices.append(index)
            }
        }
        
        while indices.count > 1 {
            let frontIndex = indices[0]
            let backIndex = indices[indices.count - 1]
            
            let frontLetter = spread[frontIndex]
            let backLetter = spread[backIndex]
            
            spread[frontIndex] = backLetter
            spread[backIndex] = frontLetter
            
            indices.removeFirst()
            indices.removeLast()
        }
        
        return spread.joined()
    }
}