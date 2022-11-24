class Solution {
    func reverse(_ x: Int) -> Int {
        var p = String(abs(x)).map { String($0) }
        
        let reversedNumber = Int(p.reversed().joined())!
        let result = x < 0 ? reversedNumber * -1 : reversedNumber
        
        let smallConstraint = Int(pow(2, 31) * -1)
        let largeConstraint =  Int(pow(2, 31) - 1) 
        
        return (result > largeConstraint || result < smallConstraint) ? 0 : result
    }
}