class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        } else if rowIndex == 1 {
            return [1, 1]
        }

        var result = [1, 1]

        for i in 2...rowIndex {
            var newResult = Array(repeating: 1, count: i + 1)

            for j in 1..<newResult.count - 1 {
                newResult[j] = result[j - 1] + result[j]
            }

            result = newResult
        }

        return result
    }
}