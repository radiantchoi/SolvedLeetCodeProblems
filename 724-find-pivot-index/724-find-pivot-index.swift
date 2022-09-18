class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {        
        if nums[1...].reduce(0, +) == 0 {
            return 0
        }
        
        var left = nums[0]
        var right = nums[1...].reduce(0, +)
        
        for i in 1..<(nums.count-1) {
            right -= nums[i]
            
            if left == right {
                return i
            }
            
            left += nums[i]
        }
        
        if nums[..<(nums.count-1)].reduce(0, +) == 0 {
            return nums.count-1
        }
        
        return -1
    }
}