class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maximum = 0
        
        var front = 0
        var back = height.count - 1
        
        while front < back {
            let bounds = (back - front) * min(height[front], height[back])
            maximum = max(maximum, bounds)
            
            if height[front] < height[back] {
                front += 1
            } else {
                back -= 1
            }
        }
        
        return maximum
    }
}