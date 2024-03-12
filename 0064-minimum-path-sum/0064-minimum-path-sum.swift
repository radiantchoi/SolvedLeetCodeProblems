class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let bigNumber = 12345678
        var result = Array(repeating: Array(repeating: bigNumber, count: grid[0].count), count: grid.count)
        
        result[0][0] = grid[0][0]
        
        for i in 1..<grid[0].count {
            result[0][i] = grid[0][i] + result[0][i-1]
        }
        
        for j in 1..<grid.count {
            result[j][0] = grid[j][0] + result[j-1][0]
        }
        
        for j in 1..<grid.count {
            for i in 1..<grid[j].count {
                result[j][i] = grid[j][i] + min(result[j-1][i], result[j][i-1])
            }
        }
        
        return result[grid.count - 1][grid[0].count - 1]
    }
}