class Solution {
    func largestOddNumber(_ num: String) -> String {
        let digits = num.map { String($0) }
        var index = -1
        
        for i in 0..<num.count {
            if let number = Int(digits[i]),
            number % 2 == 1 {
                index = i
            }
        }
        
        return index >= 0 ? digits[...index].joined() : ""
    }
}