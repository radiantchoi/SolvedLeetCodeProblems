class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = (1...nums.count).reduce(0, +)
        for number in nums {
            result -= number
        }
        
        return result
    }
}