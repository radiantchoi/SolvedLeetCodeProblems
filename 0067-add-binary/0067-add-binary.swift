class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var result = [String]()
        let maximumLength = max(a.count, b.count)
        var comingUp = 0
        
        let a = a.map { String($0) }.reversed().map { $0 }
        let b = b.map { String($0) }.reversed().map { $0 }
        
        for i in 0..<maximumLength {
            let firstNumber = i < a.count ? Int(a[i])! : 0
            let secondNumber = i < b.count ? Int(b[i])! : 0
            
            let current = firstNumber + secondNumber + comingUp
            let (div, mod) = current.quotientAndRemainder(dividingBy: 2)
            result.append(String(mod))
            comingUp = div
        }
        
        if comingUp > 0 {
            result.append(String(comingUp))
        }
        
        return result.reversed().joined()
    }
}