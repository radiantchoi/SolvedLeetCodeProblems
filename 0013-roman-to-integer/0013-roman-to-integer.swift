class Solution {
    func romanToInt(_ s: String) -> Int {
        var holding: Character? = nil
        var result = 0
        var integerValues: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        
        for letter in s.reversed() {
            if let holder = holding {
                if ((holder == "V" || holder == "X") && letter == "I")
                || ((holder == "L" || holder == "C") && letter == "X")
                || ((holder == "D" || holder == "M") && letter == "C") {
                    result += integerValues[holder]! - integerValues[letter]!
                    holding = nil
                } else {
                    result += integerValues[holder]!
                    holding = letter
                }
            } else {
                holding = letter
            }
        }
        
        if let holding {
            result += integerValues[holding]!
        }
        
        return result
    }
}