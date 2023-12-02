class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var answer = 0
        var criteria = Dictionary<Character, Int>()
        
        for letter in Array(chars) {
            guard let number = criteria[letter] else {
                criteria[letter] = 1
                continue
            }
            
            criteria[letter] = number + 1
        }
        
        for word in words {
            var criteria = criteria
            let word = Array(word)
            var isGood = true
            
            for letter in word {
                guard let number = criteria[letter] else {
                    isGood = false
                    break
                }
                
                guard number > 0  else {
                    isGood = false
                    break
                }
                
                criteria[letter] = number - 1
            }
            
            if isGood {
                answer += word.count
            }
        }
        
        return answer
    }
}