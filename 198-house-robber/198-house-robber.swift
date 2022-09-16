class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return nums.max()!
        }
        
        var result = [nums[0], nums[1]]
        
        for i in 2..<nums.count {
            let expected = nums[i] + (result[0..<(i-1)]).max()!
            result.append(expected)
        }
        
        return result.max()!
    }
}