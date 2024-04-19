class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let freq = nums.frequency
        for number in freq.keys {
            if freq[number]! == 1 {
                return number
            }
        }
        
        return 0
    }
}

extension Sequence where Element: Hashable {
    var frequency: [Element: Int] {
        let occurences = map { ($0, 1) }
        return Dictionary(occurences, uniquingKeysWith: +)
    }
}