class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let word = Array(word)
        let visited = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
        
        for row in 0..<board.count {
            for col in 0..<board[row].count {
                if traverse(board, visited, word, row, col, []) {
                    return true
                }
            }
        }
        
        return false
    }
    
    func traverse(_ board: [[Character]], _ visited: [[Bool]], _ word: [Character], _ row: Int, _ col: Int, _ current: [Character]) -> Bool {
        guard (0..<board.count) ~= row && (0..<board[row].count) ~= col && !visited[row][col] else {
            return false
        }
        
        var newVisited = visited
        newVisited[row][col] = true
        
        var newCurrent = current
        newCurrent.append(board[row][col])
        if newCurrent[newCurrent.count - 1] != word[newCurrent.count - 1] {
            return false
        }
        
        if newCurrent == word {
            return true
        }
        
        return traverse(board, newVisited, word, row-1, col, newCurrent)
        || traverse(board, newVisited, word, row+1, col, newCurrent)
        || traverse(board, newVisited, word, row, col-1, newCurrent)
        || traverse(board, newVisited, word, row, col+1, newCurrent)
    }
}