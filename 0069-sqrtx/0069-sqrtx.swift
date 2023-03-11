class Solution {
    func mySqrt(_ x: Int) -> Int {
        let results = Array(0...65536)
        let board = results.map { $0 * $0 }
        
        var front = 0
        var back = board.count - 1
        
        while front <= back {
            let mid = (front + back) / 2
            
            if board[mid] == x {
                return results[mid]
            } else if board[mid] > x {
                if mid == 0 {
                    return results[0]
                } else {
                    if board[mid-1] < x {
                        return results[mid-1]
                    } else {
                        back = mid - 1
                    }
                }
            } else {
                if mid == board.count - 1 {
                    return results[board.count - 1]
                } else {
                    if board[mid+1] > x {
                        return results[mid]
                    } else {
                        front = mid + 1
                    }
                }
            }
        }
        
        return 0
    }
}