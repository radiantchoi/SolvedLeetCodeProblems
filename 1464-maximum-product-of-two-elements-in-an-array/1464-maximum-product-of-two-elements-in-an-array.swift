class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        return (nums.removeLast() - 1) * (nums.removeLast() - 1)
    }
}