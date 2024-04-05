class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if m == 0 {
            nums1 = nums2
        }
        
        if n == 0 {
            return
        }
        
        var result = [Int]()
        
        var leading = 0
        var trailing = 0
        
        while leading < m && trailing < n {
            if nums1[leading] <= nums2[trailing] {
                result.append(nums1[leading])
                leading += 1
            } else {
                result.append(nums2[trailing])
                trailing += 1
            }
        }
        
        while leading < m {
            result.append(nums1[leading])
            leading += 1
        }
        
        while trailing < n {
            result.append(nums2[trailing])
            trailing += 1
        }
        
        nums1 = result
    }
}