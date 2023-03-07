class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {        
        let prevColor = image[sr][sc]
        if prevColor == color {
            return image
        }
        
        var grid = image
        
        traverse(&grid, sr, sc, prevColor, color)
        
        return grid
    }
    
    func traverse(_ grid: inout [[Int]], _ r: Int, _ c: Int, _ prevColor: Int, _ newColor: Int) {
        guard r >= 0 && r < grid.count && c >= 0 && c < grid[r].count && grid[r][c] == prevColor else {
            return
        }
        
        grid[r][c] = newColor
        
        traverse(&grid, r+1, c, prevColor, newColor)
        traverse(&grid, r-1, c, prevColor, newColor)
        traverse(&grid, r, c-1, prevColor, newColor)
        traverse(&grid, r, c+1, prevColor, newColor)
    }
}