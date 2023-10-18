final class RecentCounter {
    var calls: [Int]
    
    init() {
        calls = [Int]()
    }
    
    func ping(_ t: Int) -> Int {
        calls.append(t)
        
        let start = t - 3000
        let end = t
        
        let countedLog = calls.filter { $0 >= start && $0 <= end }
        return countedLog.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */