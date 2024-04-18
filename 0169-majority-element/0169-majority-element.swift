class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let frequency = nums.frequency
        let n = nums.count
        
        for number in frequency.keys {
            if frequency[number]! > n / 2 {
                return number
            }
        }
        
        return Int.min
    }
}

extension Sequence where Element: Hashable {
    var frequency: [Element: Int] {
        let occurences = map { ($0, 1) }
        return Dictionary(occurences, uniquingKeysWith: +)
    }
}