class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var image = image
        var prev = image[sr][sc]
        
        traverse(&image, sr, sc, prev, color)
        
        return image
    }
    
    func traverse(_ image: inout [[Int]], _ row: Int, _ col: Int, _ changing: Int, _ changed: Int) {
        guard (0..<image.endIndex) ~= row && (0..<image[0].endIndex) ~= col && image[row][col] == changing && image[row][col] != changed else {
            return
        }
        
        image[row][col] = changed
        
        traverse(&image, row+1, col, changing, changed)
        traverse(&image, row-1, col, changing, changed)
        traverse(&image, row, col+1, changing, changed)
        traverse(&image, row, col-1, changing, changed)
    }
}