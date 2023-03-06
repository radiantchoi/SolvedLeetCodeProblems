class Solution {
    typealias Balloon = (Int, String)
    
    func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
        let hues = colors.map { String($0) }
        
        var result = 0
        var i = 0
        var current: [Balloon] = []
        
        while i < neededTime.count {
            if current.count != 0 && hues[i] != current[current.count-1].1 {
                current.sort { $0.0 > $1.0 }
                while current.count > 1 {
                    let item = current.removeLast()
                    result += item.0
                }
                
                current.removeAll()
            }
            
            current.append((neededTime[i], hues[i]))
            i += 1
        }
        
        current.sort { $0.0 > $1.0 }
        while current.count > 1 {
            let item = current.removeLast()
            result += item.0
        }
        
        return result
    }
}