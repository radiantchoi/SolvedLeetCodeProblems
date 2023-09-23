class Solution {
    func findComplement(_ num: Int) -> Int {        
        return Int(String(num, radix: 2).map { String($0) }.map { $0 == "0" ? "1" : "0" }.joined(), radix: 2)!
    }
}