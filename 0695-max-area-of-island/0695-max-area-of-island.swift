class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var result = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                var area = 0
                traverse(&grid, i, j, &area)
                
                if area > 0 {
                    result = max(result, area)
                }
            }
        }
        
        return result
    }
    
    func traverse(_ grid: inout [[Int]], _ row: Int, _ col: Int, _ area: inout Int) {
        guard (0..<grid.count) ~= row && (0..<grid[row].count) ~= col && grid[row][col] == 1 else {
            return
        }
        
        area += 1
        grid[row][col] = 0
        
        traverse(&grid, row-1, col, &area)
        traverse(&grid, row+1, col, &area)
        traverse(&grid, row, col-1, &area)
        traverse(&grid, row, col+1, &area)
    }
}