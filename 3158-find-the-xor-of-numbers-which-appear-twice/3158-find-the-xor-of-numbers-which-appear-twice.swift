class Solution {
    func duplicateNumbersXOR(_ nums: [Int]) -> Int {
        var table: [Int: Int] = [:]
        
        for num in nums {
            guard let occurence = table[num] else {
                table[num] = 1
                continue
            }
            
            table[num]! += 1
        }
        
        let pool = table.keys.filter { table[$0]! > 1 }
        
        return pool.isEmpty ? 0 : pool.reduce(0) { $0 ^ $1 }
    }
}