class Solution {
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var result: [Int] = []
        var current = 0
        var number = 1
        
        while number <= 2000 && current < arr.count && result.count < k {
            if arr[current] > number {
                result.append(number)
            } else {
                current += 1
            }
            
            number += 1
        }
        
        while result.count < k {
            result.append(number)
            number += 1
        }
        
        return result.removeLast()
    }
}