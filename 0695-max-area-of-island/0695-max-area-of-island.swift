class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var areas = [0]
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                var area = 0
                
                traverse(&grid, i, j, &area)
                areas.append(area)
            }
        }
        
        return areas.max()!
    }
    
    func traverse(_ grid: inout [[Int]], _ r: Int, _ c: Int, _ area: inout Int) {
        guard (0..<grid.count) ~= r && (0..<grid[r].count) ~= c && grid[r][c] == 1 else {
            return
        }
        
        grid[r][c] = 0
        area += 1
        
        traverse(&grid, r+1, c, &area)
        traverse(&grid, r-1, c, &area)
        traverse(&grid, r, c+1, &area)
        traverse(&grid, r, c-1, &area)
    }
}