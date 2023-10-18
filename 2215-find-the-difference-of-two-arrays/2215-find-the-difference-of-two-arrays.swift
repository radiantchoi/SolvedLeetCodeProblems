class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        return [difference(with: nums2, against: nums1), difference(with: nums1, against: nums2)]
    }
    
    func difference(with nums1: [Int], against nums2: [Int]) -> [Int] {
        var result = Set<Int>()
        var occurences = [Int: Int]()
        
        for num in nums1 {
            if occurences[num] != nil {
                occurences[num]! += 1
            } else {
                occurences[num] = 1
            }
        }
        
        for num in nums2 {
            if occurences[num] == nil {
                result.insert(num)
            }
        }
        
        return Array(result)
    }
}