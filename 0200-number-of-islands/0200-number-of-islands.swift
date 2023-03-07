class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var result = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                var count = 0
                
                traverse(&grid, i, j, &count)
                result += count
            }
        }
        
        return result
    }
    
    func traverse(_ grid: inout [[Character]], _ r: Int, _ c: Int, _ count: inout Int) {
        guard r >= 0 && r < grid.count && c >= 0 && c < grid[r].count && grid[r][c] == "1" else {
            return
        }
        
        count = 1
        grid[r][c] = "0"
        
        traverse(&grid, r+1, c, &count)
        traverse(&grid, r-1, c, &count)
        traverse(&grid, r, c-1, &count)
        traverse(&grid, r, c+1, &count)
    }
}