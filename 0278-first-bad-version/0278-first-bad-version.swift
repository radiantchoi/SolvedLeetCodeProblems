/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var front = 1
        var back = n
        
        while front <= back {
            let mid = (front + back) / 2
            
            if isBadVersion(mid) {
                if mid == 1 {
                    return mid
                } else {
                    if isBadVersion(mid-1) {
                        back = mid - 1
                    } else {
                        return mid
                    }
                }
            } else {
                front = mid + 1
            }
        }
        
        return 1
    }
}