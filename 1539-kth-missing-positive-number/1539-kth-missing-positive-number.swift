class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var result: [Int] = []
        var number = 1
        var index = 0
        
        while number < 2000 && index < arr.count {
            if arr[index] != number {
                result.append(number)
            } else {
                index += 1
            }
            
            number += 1
        }
        
        while result.count < k {
            result.append(number)
            number += 1
        }
        
        return result[k-1]
    }
}