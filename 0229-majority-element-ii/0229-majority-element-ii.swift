class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var elements = [Int: Int]()
        
        for num in nums {
            if let _ = elements[num] {
                elements[num]! += 1
            } else {
                elements[num] = 1
            }
        }
        
        return elements.keys.filter { elements[$0]! > (nums.count / 3) }
    }
}