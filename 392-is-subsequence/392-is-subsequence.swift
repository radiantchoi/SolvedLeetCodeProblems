class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        // 첫 글자가 나온 이후, 순서가 맞게 두 번째 글자가 나오는지 보고, 반복.
        
        let container = s.map { String($0) }
        let spread = t.map { String($0) }
        
        var i = 0
        var j = 0
        while i < container.count, j < spread.count {
            if container[i] == spread[j] {
                i += 1
            }
            
            j += 1
        }
        
        if i == container.count {
            return true
        } else {
            return false
        }
    }
}