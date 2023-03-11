class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [-1, -1]
        let maximum = nums.count
        
        guard nums.count > 0 else {
            return result
        }
        
        if nums[0] == target {
            result[0] = 0
        }
        
        if nums[maximum-1] == target {
            result[1] = maximum - 1
        }
        
        var front = 0
        var back = maximum - 1
        
        while front <= back {
            let mid = (front + back) / 2
            
            if nums[mid] < target && mid < maximum-1 {
                if nums[mid+1] == target {
                    result[0] = mid + 1
                    break
                } else {
                    front = mid + 1
                }
            } else {
                back = mid - 1
            }
        }
        
        front = 0
        back = maximum - 1
        
        while front <= back {
            let mid = (front + back) / 2
            
            if nums[mid] > target && mid > 0 {
                if nums[mid-1] == target {
                    result[1] = mid - 1
                    break
                } else {
                    back = mid - 1
                }
            } else {
                front = mid + 1
            }
        }
        
        return result
    }
}