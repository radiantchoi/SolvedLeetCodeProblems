class MyQueue {
    var pushing = [Int]()
    var popping = [Int]()
    
    init() { }
    
    func push(_ x: Int) {
        pushing.append(x)
    }
    
    func pop() -> Int {
        if popping.isEmpty {
            refill()
        }
        
        return popping.removeLast()
    }
    
    func peek() -> Int {
        popping.isEmpty ? pushing[0] : popping[popping.endIndex - 1]
    }
    
    func empty() -> Bool {
        pushing.isEmpty && popping.isEmpty
    }
    
    func refill() {
        popping.append(contentsOf: pushing.reversed())
        pushing.removeAll()
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */