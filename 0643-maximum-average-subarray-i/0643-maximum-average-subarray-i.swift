class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        let nums = nums.map { Double($0) }
        let length = Double(k)
        
        let initialValue = nums[0..<k].reduce(0, +)
        var values = [initialValue]
        
        for i in k..<nums.count {
            let previousValue = values[values.count-1]
            let newValue = previousValue + nums[i] - nums[i-k]
            values.append(newValue)
        }
        
        return values.max()! / length
    }
}