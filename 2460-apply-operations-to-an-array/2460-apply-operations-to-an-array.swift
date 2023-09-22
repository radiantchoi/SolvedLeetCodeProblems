class Solution {
    func applyOperations(_ nums: [Int]) -> [Int] {
        var nums = nums
        
        for i in 0..<nums.count - 1 {
            if nums[i] == nums[i+1] {
                nums[i] *= 2
                nums[i+1] = 0
            }
        }
        
        var result = nums.filter { $0 > 0 }
        var zeroes = Array(repeating: 0, count: nums.count - result.count)
        result.append(contentsOf: zeroes)
        
        return result
    }
}