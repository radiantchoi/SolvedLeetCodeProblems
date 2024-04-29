class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var points = points.map { Point(coordinate: $0, distance: distance(to: $0)) }.sorted { $0.distance > $1.distance }
        
        var result = [[Int]]()
        while let point = points.popLast() {
            result.append(point.coordinate)
            
            if result.count == k {
                break
            }
        }
        
        return result
    }
    
    struct Point {
        let coordinate: [Int]
        let distance: Double
    }
    
    func distance(from starting: [Int] = [0, 0], to ending: [Int]) -> Double {
        return sqrt(pow(abs(Double(ending[0])), 2) + pow(abs(Double(ending[1])), 2))
    }
}
