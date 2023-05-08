class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var result = 0
        
        var row = 0
        var col = 0
        
        while row < mat.count && col < mat.count {
            result += mat[row][col]
            result += mat[(mat.count - row - 1)][col]
            
            row += 1
            col += 1
        }
        
        if mat.count % 2 == 1 {
            let mid = mat.count / 2
            result -= mat[mid][mid]
        }
        
        return result
    }
}