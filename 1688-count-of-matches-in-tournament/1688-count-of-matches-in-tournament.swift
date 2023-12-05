class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var games = 0
        var candidates = n
        
        while candidates > 1 {
            games += candidates / 2
            
            var isOdd = false
            
            if candidates % 2 == 1 {
                isOdd = true
            }
            
            candidates /= 2
            
            if isOdd {
                games += 1
            }
        }
        
        return games
    }
}