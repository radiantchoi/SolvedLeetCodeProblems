class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        let n = isConnected.count
        var stack = [Int]()
        var visited = Array(repeating: false, count: n)
        
        var result = 0
        
        for node in 0..<n {
            if visited[node] {
                continue
            }
            
            stack.append(node)            
            visited[node] = true
            
            while !stack.isEmpty {
                let current = stack.removeLast()
                let roads = isConnected[current]
                
                for (index, road) in roads.enumerated() {
                    if road == 1 && !visited[index] {
                        stack.append(index)
                        visited[index] = true
                    }
                }
            }
            
            result += 1
        }
        
        return result
    }
}