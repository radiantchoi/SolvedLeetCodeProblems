class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groups = [String: [String]]()
        
        for str in strs {
            var occurences = [Character: Int]()

            for letter in Array(str) {
                if let val = occurences[letter] {
                    occurences[letter] = val + 1
                } else {
                    occurences[letter] = 1
                }
            }

            let anagramKey = makeAnagramKey(for: occurences)
            
            if let group = groups[anagramKey] {
                groups[anagramKey]!.append(str)
            } else {
                groups[anagramKey] = [str]
            }
        }

        return Array(groups.values)
    }

    func makeAnagramKey(for occurences: [Character: Int]) -> String {
        return occurences.keys.sorted().reduce("") { previous, key in 
            var previous = previous
            previous += String(key)
            previous += String(occurences[key]!)
            
            return previous
        }
    }
}