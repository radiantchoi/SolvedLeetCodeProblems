class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var firstLetters = [Character: Int]()
        var secondLetters = [Character: Int]()
        
        for letter in s {
            if firstLetters[letter] == nil {
                firstLetters[letter] = 1
            } else {
                firstLetters[letter]! += 1
            }
        }
        
        for letter in t {
            if secondLetters[letter] == nil {
                secondLetters[letter] = 1
            } else {
                secondLetters[letter]! += 1
            }
        }
        
        return firstLetters == secondLetters ? true : false
    }
}