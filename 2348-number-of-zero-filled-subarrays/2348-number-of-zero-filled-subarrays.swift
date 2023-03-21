class Solution {
    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        var zeroes = [0]
        var continuous = 0
        
        for i in 0..<nums.count {
            if nums[i] == 0 {
                continuous += 1
            } else {
                zeroes.append(continuous)
                continuous = 0
            }
        }
        
        if continuous > 0 {
            zeroes.append(continuous)
        }
        
        var triangles = [0]
        let maximum = zeroes.max()!
        
        if maximum > 0 {
            for j in 1...maximum {
                triangles.append(j + triangles[j-1])
            }
        }
        
        var result = 0
        
        zeroes.forEach { result += triangles[$0] }
        
        return result
    }
}