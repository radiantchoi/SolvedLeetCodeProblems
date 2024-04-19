class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return nums.frequencies.values.filter { $0 > 1 }.count > 0 ? true : false
    }
}

extension Sequence where Element: Hashable {
    var frequencies: [Element: Int] {
        let occurences = map { ($0, 1) }
        return Dictionary(occurences, uniquingKeysWith: +)
    }
}