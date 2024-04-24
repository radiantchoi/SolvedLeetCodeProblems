class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let digits = String(n, radix: 2)
        return digits.filter { $0 == "1" }.count
    }
}