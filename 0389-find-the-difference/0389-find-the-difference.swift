class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var original = [Character: Int]()
        var extended = [Character: Int]()
        
        for letter in s {
            if original[letter] != nil {
                original[letter]! += 1
            } else {
                original[letter] = 1
            }
        }

        for letter in t {
            if extended[letter] != nil {
                extended[letter]! += 1
            } else {
                extended[letter] = 1
            }
        }
        
        for letter in extended.keys {
            if original[letter] != extended[letter] || original[letter] == nil {
                return letter
            }
        }
        
        return "-"
    }
}