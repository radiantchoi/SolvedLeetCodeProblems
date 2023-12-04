class Solution {
    func largestGoodInteger(_ num: String) -> String {
        var answer = ""
        let spread = num.map { String($0) }
        
        for i in 0..<spread.count - 2 {
            guard spread[i] == spread[i+1] && spread[i+1] == spread[i+2] else {
                continue
            }
            
            let number = spread[i...(i+2)].reduce("", +)
            
            if answer.isEmpty {
                answer = number
            } else {
                if answer == "000" {
                    answer = number
                } else {
                    answer = String(max(Int(answer)!, Int(number)!))
                }
            }
        }
        
        return answer
    }
}