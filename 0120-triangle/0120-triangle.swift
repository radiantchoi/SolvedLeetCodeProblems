class Solution {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        let n = triangle.count
        var result = Array(repeating: Array(repeating: 10001, count: n), count: n)
        result[0][0] = triangle[0][0]
        
        for i in 1..<triangle.count {
            result[i][0] = result[i-1][0] + triangle[i][0]
        }

        for j in 1..<triangle.count {
            let k = triangle[j].count - 1
            
            result[j][k] = result[j-1][k-1] + triangle[j][k]
        }
        
        if triangle.count > 2 {
            for i in 2..<triangle.count {
                for j in 1..<triangle[i].count - 1 {
                    result[i][j] = triangle[i][j] + min(result[i-1][j], result[i-1][j-1])
                }
            }
        }
        
        return result[result.count - 1].min()!
    }
}