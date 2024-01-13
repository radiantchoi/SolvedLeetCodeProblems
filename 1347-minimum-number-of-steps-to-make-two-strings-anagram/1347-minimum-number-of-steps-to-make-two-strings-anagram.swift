class Solution {
    func minSteps(_ s: String, _ t: String) -> Int {
        var sLetters = makeOccurences(quote: s)
        var tLetters = makeOccurences(quote: t)
        
        var result = 0
        
        for letter in sLetters.keys {
            guard tLetters[letter] != nil else {
                result += sLetters[letter]!
                continue
            }
            
            if sLetters[letter]! > tLetters[letter]! {
                result += sLetters[letter]! - tLetters[letter]!
            }
        }
        
        return result
    }
    
    func makeOccurences(quote: String) -> [Character: Int] {
        var result = [Character: Int]()
        
        for letter in Array(quote) {
            guard result[letter] != nil else {
                result[letter] = 1
                continue
            }
            
            result[letter]! += 1
        }
        
        return result
    }
}