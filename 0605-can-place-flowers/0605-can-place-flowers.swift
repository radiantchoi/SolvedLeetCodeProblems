class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var available = Array(repeating: true, count: flowerbed.count)
        
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 1 {
                available[i] = false
                
                if i > 0 {
                    available[i-1] = false
                }
                
                if i < flowerbed.count-1 {
                    available[i+1] = false
                }
            }
        }
        
        var connected = 0
        var space = 0
        for j in 0..<available.count {
            if available[j] {
                connected += 1
            } else {
                if connected % 2 == 0 {
                    space += connected / 2
                } else {
                    space += (connected / 2) + 1
                }
                
                connected = 0
            }
        }
        
        if connected % 2 == 0 {
            space += connected / 2
        } else {
            space += (connected / 2) + 1
        }
        
        return space >= n ? true : false
    }
}