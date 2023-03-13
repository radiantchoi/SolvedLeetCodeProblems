class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var front = 0
        var back = numbers.count - 1
        
        while front < back {
            let value = numbers[front] + numbers[back]
            
            if value == target {
                break
            } else if value < target {
                front += 1
            } else {
                back -= 1
            }
        }
        
        return [front+1, back+1]
    }
}