class Solution {
    func countSubIslands(_ grid1: [[Int]], _ grid2: [[Int]]) -> Int {
        var grid = grid2
        var result = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                var isSubisland = true
                var area = 0
                
                traverse(grid1, &grid, i, j, &isSubisland, &area)
                
                if isSubisland && area > 0 {
                    result += 1
                }
            }
        }
        
        return result
    }
    
    func traverse(_ board: [[Int]], _ grid: inout [[Int]], _ row: Int, _ col: Int, _ isSubisland: inout Bool, _ area: inout Int) {
        guard (0..<grid.count) ~= row && (0..<grid[row].count) ~= col && grid[row][col] == 1 else {
            return
        }
        
        if board[row][col] == 0 {
            isSubisland = false
        }
        
        grid[row][col] = 0
        area += 1
        
        traverse(board, &grid, row-1, col, &isSubisland, &area)
        traverse(board, &grid, row+1, col, &isSubisland, &area)
        traverse(board, &grid, row, col-1, &isSubisland, &area)
        traverse(board, &grid, row, col+1, &isSubisland, &area)
    }
}