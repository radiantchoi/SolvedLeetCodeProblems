class Solution {
    func longestPalindrome(_ s: String) -> Int {
        let spread = s.map { String($0) }
        var appearance = [String: Int]()
        
        for letter in spread {
            if appearance.keys.contains(letter) {
                appearance[letter]! += 1
            } else {
                appearance[letter] = 1
            }
        }
        
        let evens = appearance.values.filter { $0 % 2 == 0 }
        let odds = appearance.values.filter { $0 % 2 == 1 }
        
        var result = evens.reduce(0, +)
        
        for odd in odds {
            if odd > 1 {
                result += (odd - 1)
            }
        }
        
        if odds.isEmpty {
            return result
        } else {
            return result + 1
        }
    }
}