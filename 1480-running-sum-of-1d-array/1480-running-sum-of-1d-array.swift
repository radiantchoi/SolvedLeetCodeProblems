class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var gross = 0
        var result = [Int]()
        
        for i in 0..<nums.count {
            gross += nums[i]
            result.append(gross)
        }
        
        return result
    }
}