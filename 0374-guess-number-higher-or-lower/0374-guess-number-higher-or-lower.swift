/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var lower = 1
        var upper = n
        
        while lower <= upper {
            let mid = (lower + upper) / 2
            
            let result = guess(mid)
            
            if result == -1 {
                upper = mid - 1
            } else if result == 1 {
                lower = mid + 1
            } else {
                return mid
            }
        }
        
        return 0
    }
}