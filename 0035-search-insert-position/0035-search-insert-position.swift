class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var front = 0
        var back = nums.count - 1

        while front <= back {
            let mid = (front + back) / 2

            if nums[mid] > target {
                if mid == 0 {
                    return 0
                } else {
                    if nums[mid-1] < target {
                        return mid
                    } else {
                        back = mid - 1
                    }
                }
            } else if nums[mid] < target {
                if mid == nums.count - 1 {
                    return nums.count
                } else {
                    if nums[mid+1] > target {
                        return mid + 1
                    } else {
                        front = mid + 1
                    }
                }
            } else {
                return mid
            }
        }

        return -1
    }
}