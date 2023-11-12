class Solution {
    func rob(_ nums: [Int]) -> Int {
        var nums = nums
        
        if nums.count > 2 {
            nums[2] += nums[0]
        }
        
        if nums.count > 3 {
            for i in 3..<nums.count {
                nums[i] += max(nums[i-2], nums[i-3])
            }
        }
        
        return nums.max()!
    }
}