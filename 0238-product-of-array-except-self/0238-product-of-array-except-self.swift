class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let gross = nums.reduce(1, *)
        let nonZero = nums.filter { $0 != 0 }
        let withoutZero = if nums.count - nonZero.count > 1 {
            0
        } else {
            nonZero.reduce(1, *)
        }
        
        let result = nums.map { number in 
            if number == 0 {
                withoutZero
            } else {
                gross / number
            }        
        }
        
        return result
    }
}