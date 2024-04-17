class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let ransomFrequency = ransomNote.frequency
        let magazineFrequency = magazine.frequency
        
        for letter in ransomFrequency.keys {
            guard let magFreq = magazineFrequency[letter], magFreq >= ransomFrequency[letter]! else {
                return false
            }
        }
        
        return true
    }
}

extension Sequence where Element: Hashable {
    var frequency: [Element: Int] {
        let occurences = map { ($0, 1) }
        return Dictionary(occurences, uniquingKeysWith: +)
    }
}