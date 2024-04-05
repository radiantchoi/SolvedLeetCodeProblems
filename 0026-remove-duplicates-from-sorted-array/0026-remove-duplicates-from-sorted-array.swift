class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let result = Array(Set(nums)).sorted()
        nums = result
        return result.count
    }
}