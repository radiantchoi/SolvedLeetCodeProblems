class Solution {
    func findSpecialInteger(_ arr: [Int]) -> Int {
        var occurences = Dictionary<Int, Double>()
        let threshold = Double(arr.count) / 4.0
        
        for number in arr {
            if occurences[number] != nil {
                occurences[number]! += 1.0
            } else {
                occurences[number] = 1.0
            }
        }
        
        var results = occurences.keys
                        .filter { occurences[$0]! >= threshold }
                        .sorted { occurences[$0]! > occurences[$1]! }
        
        return results[0]
    }
}