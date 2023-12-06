class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var result = 0
        
        for i in 0..<points.count - 1 {
            let starting = points[i]
            let destination = points[i+1]
            
            result += max(abs(starting[0] - destination[0]), abs(starting[1] - destination[1]))
        }
        
        return result
    }
}