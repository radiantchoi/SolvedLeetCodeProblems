class Solution {
    func countLargestGroup(_ n: Int) -> Int {
        var result = Array(repeating: [Int](), count: 37)
        
        for i in 1...n {
            let sumOfDigits = sumDigits(i)
            result[sumOfDigits].append(i)
        }
        
        let maximumCount = result.sorted { $0.count > $1.count }[0].count
        return result.filter { $0.count == maximumCount }.count
    }
    
    func sumDigits(_ n: Int) -> Int {
        return String(n).map { Int(String($0))! }.reduce(0, +)
    }
}