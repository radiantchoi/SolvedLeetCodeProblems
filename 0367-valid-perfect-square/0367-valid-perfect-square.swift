class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var board = [Int]()
        for i in 1...65536 {
            board.append(i * i)
        }
        
        var front = 0
        var back = board.count - 1
        
        while front <= back {
            let mid = (front + back) / 2
            
            if board[mid] == num {
                return true
            } else if board[mid] > num {
                back = mid - 1
            } else {
                front = mid + 1
            }
        }

        return false
    }
}