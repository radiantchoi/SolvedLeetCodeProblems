class Solution {
    func numSpecial(_ mat: [[Int]]) -> Int {
        var result = 0
        let grid = transpose(mat)
        
        for i in 0..<mat.count {
            for j in 0..<mat[i].count {
                if mat[i][j] == 1 {
                    if mat[i].reduce(0, +) == 1 && grid[j].reduce(0, +) == 1 {
                        result += 1
                    }
                }
            }
        }
        
        return result
    }
    
    func transpose(_ grid: [[Int]]) -> [[Int]] {
        var result = Array(repeating: Array(repeating: 0, count: grid.count), count: grid[0].count)
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                result[j][i] = grid[i][j]
            }
        }
        
        return result
    }
}