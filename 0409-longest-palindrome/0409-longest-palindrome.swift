class Solution {
    func longestPalindrome(_ s: String) -> Int {
        let frequency = s.frequency
        print(frequency)
        let evens = frequency.values.filter { $0 % 2 == 0 }.reduce(0, +)
        let odds = frequency.values.filter { $0 % 2 == 1 }.map { $0 - 1 }
        
        return odds.isEmpty ? evens : evens + odds.reduce(0, +) + 1
    }
}

extension Sequence where Element: Hashable {
    var frequency: [Element: Int] {
        let occurences = self.map { ($0, 1) }
        return Dictionary(occurences, uniquingKeysWith: +)
    }
}