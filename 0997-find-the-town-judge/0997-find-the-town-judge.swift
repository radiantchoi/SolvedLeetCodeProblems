class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var connections = Array(repeating: [Int](), count: n)
        var trusted = Array(repeating: 0, count: n)
        
        for person in trust {
            let index = person[0] - 1
            let points = person[1] - 1
            
            connections[index].append(points)
        }
        
        var confused = true
        for connection in connections {
            if connection.isEmpty {
                confused = false
            } else {
                for ticket in connection {
                    trusted[ticket] += 1
                }
            }
        }
        
        if confused {
            return -1
        }
       
        for i in 0..<trusted.count {
            if trusted[i] == n - 1 {
                return i + 1
            }
        }
        
        return -1
    }
}