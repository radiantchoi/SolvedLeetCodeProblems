class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var word = Array(word)
        
        if let keyIndex = word.firstIndex(where: { $0 == ch }) {
            var leading = 0
            var trailing = keyIndex
            var temp: Character
            
            while leading < trailing {
                temp = word[leading]
                word[leading] = word[trailing]
                word[trailing] = temp
                
                leading += 1
                trailing -= 1
            }
        }
        
        return String(word)
    }
}