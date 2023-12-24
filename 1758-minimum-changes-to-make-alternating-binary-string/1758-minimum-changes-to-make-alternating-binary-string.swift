class Solution {
    func minOperations(_ s: String) -> Int {
        let letters = s.map { String($0) }
        
        return min(starting(["0", "1"], letters), starting(["1", "0"], letters))
    }
    
    func starting(_ pair: [String], _ letters: [String]) -> Int {
        var letters = letters
        var current = pair[0]
        var result = 0
        
        for i in 0..<letters.count {
            if letters[i] != current {
                letters[i] = current
                result += 1
            }
            
            let index = (i + 1) % 2
            current = pair[index]
        }
        
        return result
    }
}