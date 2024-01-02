class Solution {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
        var occ = [Int: Int]()
        
        for num in nums {
            guard occ[num] != nil else {
                occ[num] = 1
                continue
            }
            
            occ[num]! += 1
        }
        
        let maximum = occ.values.max()!
        var result = Array(repeating: [Int](), count: maximum)
        
        for number in occ.keys {
            let occurence = occ[number]!
            var counterpart = occ[number]!
            
            while counterpart > 0 {
                result[occurence - counterpart].append(number)
                counterpart -= 1
            }
        }
        
        return result
    }
}