class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var studentsQueue = Queue(arrival: students)
        var sandwiches = Array(sandwiches.reversed())
        
        var hungry = students.count
        var returned = 0
        
        while !studentsQueue.isEmpty && returned <= hungry {
            if sandwiches[sandwiches.count - 1] == studentsQueue.first {
                studentsQueue.dequeue()
                sandwiches.removeLast()
                hungry -= 1
                returned = 0
            } else {
                if let returning = studentsQueue.dequeue() {
                    studentsQueue.enqueue(returning)
                    returned += 1
                }
            }
        }
        
        return hungry
    }
}

struct Queue<T> {
    var arrival: [T] = []
    var departure: [T] = []
    
    var isEmpty: Bool {
        return arrival.isEmpty && departure.isEmpty ? true : false
    }
    
    var first: T? {
        if self.isEmpty {
            return nil
        } else if departure.isEmpty {
            return arrival[0]
        } else {
            return departure[departure.count - 1]
        }
    }
    
    mutating func enqueue(_ item: T) {
        arrival.append(item)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if self.isEmpty {
            return nil
        } else if departure.isEmpty {
            fill()
        }
        
        return departure.removeLast()
    }
    
    mutating func fill() {
        departure.append(contentsOf: Array(arrival.reversed()))
        arrival.removeAll()
    }
}