class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var intervals = intervals
        intervals.append(newInterval)
        
        intervals.sort { $0[0] < $1[0] }
        
        var result = [[Int]]()
        var temporary = [Int]()

        for i in intervals {
            if !temporary.isEmpty && temporary[1] >= i[0] {
                temporary[1] = max(temporary[1], i[1])
            } else if !temporary.isEmpty {
                result.append(temporary)
                temporary = i
            } else {
                temporary = i
            }
        }
        
        result.append(temporary)
        
        return result
    }
}