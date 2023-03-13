class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        let length = nums.count
        
        for i in 0..<length {
            let criteria = length - i
            
            if nums[i] >= criteria {
                if i == 0 {
                    return criteria
                } else {
                    if nums[i-1] < criteria {
                        return criteria
                    }
                }
            }
        }
        
        return -1
    }
}