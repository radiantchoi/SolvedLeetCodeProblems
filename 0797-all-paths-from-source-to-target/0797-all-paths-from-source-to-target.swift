class Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        
        traverse(graph, [], 0, &result)
        
        return result
    }
    
    func traverse(_ graph: [[Int]], _ nodes: [Int], _ destination: Int, _ paths: inout [[Int]]) {
        var nodes = nodes
        nodes.append(destination)
        
        if destination == graph.count - 1 {
            paths.append(nodes)
            return
        }
        
        for n in graph[destination] {
            traverse(graph, nodes, n, &paths)
        }
    }
}