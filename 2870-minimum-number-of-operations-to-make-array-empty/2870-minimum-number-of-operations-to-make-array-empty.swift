class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var result = 0
        
        var occ = [Int: Int]()
        for num in nums {
            guard occ[num] != nil else {
                occ[num] = 1
                continue
            }
            
            occ[num]! += 1
        }
        
        print(occ)

        for occurence in occ.values {
            let partial = breakDown(occurence)
            
            if partial > 0 {
                result += partial
            } else {
                return -1
            }
        }
        
        return result
    }
    
    func breakDown(_ number: Int) -> Int {        
        if number % 3 == 0 {
            return number / 3
        } 
        
        else if number % 3 == 2 {
            return (number / 3) + 1
        }
        
        else if number % 3 == 1 && number / 3 > 1 {
            return (number - 4) / 3 + 2
        }
        
        else if number % 2 == 0 {
            return number / 2
        } 
        
        else {
            return -1
        }
    }
}