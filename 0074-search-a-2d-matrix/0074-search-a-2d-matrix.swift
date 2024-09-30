class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let arr = matrix.flatMap { $0 }
        let destination = bisectLeft(arr, target)

        if destination < arr.count && arr[destination] == target {
            return true
        } else {
            return false
        }
     }

    func bisectLeft(_ arr: [Int], _ target: Int) -> Int {
        var low = 0
        var high = arr.count

        while low < high {
            let mid = (low + high) / 2

            if arr[mid] < target {
                low = mid + 1
            } else {
                high = mid
            }
        }

        return low
    }
}