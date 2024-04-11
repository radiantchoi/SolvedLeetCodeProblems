class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.endIndex - 1 {
            for j in i+1..<nums.endIndex {
                if i == j {
                    continue
                } else {
                    if nums[i] + nums[j] == target {
                        return [i, j]
                    }
                }
            }
        }
        
        return []
    }
}