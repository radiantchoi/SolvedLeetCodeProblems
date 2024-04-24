class Solution {
    func reverseBits(_ n: Int) -> Int {
        let binary = String(n, radix: 2)
        var digits = [Character]()
        var bucket = binary.count
        
        while bucket < 32 {
            digits.append("0")
            bucket += 1
        }
        
        digits.append(contentsOf: binary)
        digits.reverse()
        
        return Int(String(digits), radix: 2)!
    }
}