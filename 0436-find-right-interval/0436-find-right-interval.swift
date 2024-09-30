class Solution {
    func findRightInterval(_ intervals: [[Int]]) -> [Int] {
        var result = [Int]()

        let startings = intervals.enumerated()
            .map { Start(index: $0.0, number: $0.1[0]) }
            .sorted { $0.number < $1.number }

        for interval in intervals {
            let target = interval[1]
            let destination = bisectLeft(startings, target)

            if destination >= startings.count {
                result.append(-1)
            } else {
                let formerIndex = startings[destination].index
                result.append(formerIndex)
            }
        }

        return result
    }

    struct Start {
        let index: Int
        let number: Int
    }

    func bisectLeft(_ arr: [Start], _ target: Int) -> Int {
        var low = 0
        var high = arr.count

        while low < high {
            let mid = (low + high) / 2

            if arr[mid].number < target {
                low = mid + 1
            } else {
                high = mid
            }
        }

        return low
    }
}