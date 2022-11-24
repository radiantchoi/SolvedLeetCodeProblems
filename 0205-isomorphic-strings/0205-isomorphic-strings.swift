class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var changeTable: [String: String] = [:]
        
        let arrS = s.map { String($0) }
        let arrT = t.map { String($0) }
        
        for i in 0..<arrS.count {
            if changeTable.keys.contains(arrS[i]) {
                if arrT[i] != changeTable[arrS[i]] {
                    return false
                }
            } else {
                if changeTable.values.contains(arrT[i]) {
                    return false
                } else {
                    changeTable[arrS[i]] = arrT[i]
                }
            }
        }
        
        return true
    }
}