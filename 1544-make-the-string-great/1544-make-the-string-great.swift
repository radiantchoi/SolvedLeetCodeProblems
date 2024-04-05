class Solution {
    func makeGood(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        
        var letters = s.map { String($0) }
        var modified = false
        var marked = Array(repeating: false, count: letters.count)
        
        for i in 0..<letters.count - 1 {
            if marked[i] {
                continue
            }
            
            if letters[i].isUppercase {
                if letters[i+1] == letters[i].lowercased() {
                    modified = true
                    marked[i] = true
                    marked[i+1] = true
                }
            } else {
                if letters[i+1] == letters[i].uppercased() {
                    modified = true
                    marked[i] = true
                    marked[i+1] = true
                }
            }
        }
        
        let result = letters.enumerated().filter { (index, letter) in 
            !marked[index]
        }
        .map {
            $0.element
        }
       
        if modified {
            return makeGood(result.joined())
        } else {
            return result.joined()
        }
    }
}

extension String {
    var isUppercase: Bool {
        Character(self).isUppercase
    }
}