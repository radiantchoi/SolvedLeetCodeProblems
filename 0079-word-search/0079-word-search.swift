class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let target = Array(word)
        let threshold = target.count
        var result = false
        var board = board

        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if result == true { break }

                result = result || traverse(&board, 0, i, j, threshold, target)
            }
        }

        return result
    }

    func traverse(_ board: inout [[Character]], _ checked: Int, _ row: Int, _ col: Int, _ threshold: Int, _ target: [Character]) -> Bool {
        if checked == threshold {
            return true
        }

        guard (0..<board.count) ~= row && (0..<board[0].count) ~= col else {
            return false
        }

        guard board[row][col] == target[checked] else {
            return false
        }
        
        let temp = board[row][col]
        board[row][col] = "#"

        let result = traverse(&board, checked + 1, row + 1, col, threshold, target)
        || traverse(&board, checked + 1, row - 1, col, threshold, target)
        || traverse(&board, checked + 1, row, col + 1, threshold, target)
        || traverse(&board, checked + 1, row, col - 1, threshold, target)

        board[row][col] = temp

        return result
    }
}