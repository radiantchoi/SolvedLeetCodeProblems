class Solution {
    struct RecentColor {
        let color: Character
        var number: Int
        
        mutating func increment() {
            number += 1
        }
    }
    
    func winnerOfGame(_ colors: String) -> Bool {
        let colors = Array(colors)
        var aliceTurn = 0
        var bobTurn = 0
        var recent = RecentColor(color: colors[0], number: 1)
        
        for i in 1..<colors.count {
            let color = colors[i]
            
            if color == recent.color {
                recent.increment()
            } else {
                if recent.number > 2 {
                    if recent.color == "A" {
                        aliceTurn += recent.number - 2
                    } else {
                        bobTurn += recent.number - 2
                    }
                }
                
                recent = RecentColor(color: color, number: 1)
            }
        }
        
        if recent.number > 2 {
            if recent.color == "A" {
                aliceTurn += recent.number - 2
            } else {
                bobTurn += recent.number - 2
            }
        }
        
        return aliceTurn > 0 && aliceTurn > bobTurn ? true : false
    }
}