class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var front = 0
        var back = arr.count - 1
        
        while front <= back {
            let mid = (front + back) / 2
            
            if arr[mid-1] > arr[mid] {
                back = mid
            } else if arr[mid+1] > arr[mid] {
                front = mid
            } else {
                return mid
            }
        }
        
        return -1
    }
}