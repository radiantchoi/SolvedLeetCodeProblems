class Solution {
    func closedIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var result = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                var area = 0
                var isClosed = true
                
                traverse(&grid, i, j, &isClosed, &area)
                
                if isClosed && area > 0 {
                    result += 1
                }
            }
        }
        
        return result
    }
    
    func traverse(_ grid: inout [[Int]], _ row: Int, _ col: Int, _ isClosed: inout Bool, _ area: inout Int) {
        guard (0..<grid.count) ~= row && (0..<grid[row].count) ~= col else {
            isClosed = false
            return
        }
        
        guard grid[row][col] == 0 else {
            return
        }
        
        grid[row][col] = 1
        area += 1
        
        traverse(&grid, row-1, col, &isClosed, &area)
        traverse(&grid, row+1, col, &isClosed, &area)
        traverse(&grid, row, col-1, &isClosed, &area)
        traverse(&grid, row, col+1, &isClosed, &area)
    }
}