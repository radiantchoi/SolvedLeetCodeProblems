class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let zeroes = Array(repeating: 0, count: nums.filter { $0 == 0 }.count)
        var result = nums.filter { $0 != 0 }
        result.append(contentsOf: zeroes)
        nums = result
    }
}