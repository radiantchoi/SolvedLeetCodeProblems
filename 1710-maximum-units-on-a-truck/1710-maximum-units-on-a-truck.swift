class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        let boxes = boxTypes.sorted { $0[1] > $1[1] }
        var capacity = truckSize
        
        var result = 0
        for box in boxes {
            guard capacity > 0 else {
                break
            }
            
            if capacity >= box[0] {
                result += box[1] * box[0]
                capacity -= box[0]
            } else {
                result += box[1] * capacity
                capacity = 0
            }
        }
        
        return result
    }
}