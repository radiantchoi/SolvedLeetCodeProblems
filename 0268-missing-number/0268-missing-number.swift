class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let gross = nums.reduce(0, +)
        let expected = (nums.count) * (nums.count + 1) / 2
        return expected - gross
    }
}