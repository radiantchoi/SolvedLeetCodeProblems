class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = [Int]()
        var currentIndex = 0
        
        while currentIndex <= n {
            result.append(countOnes(currentIndex))
            currentIndex += 1
        }
        
        return result
    }
    
    func countOnes(_ n: Int) -> Int {
        var digits = [String]()
        var n = n
        
        while n > 0 {
            let (div, mod) = n.quotientAndRemainder(dividingBy: 2)
            digits.append(String(mod))
            n = div
        }
        
        return digits.reduce(0) { $1 == "1" ? $0 + 1 : $0 }
    }
}