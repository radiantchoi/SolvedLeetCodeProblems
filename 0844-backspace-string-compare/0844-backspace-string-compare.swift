class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        var firstStack = [Character]()
        var secondStack = [Character]()
        
        for letter in s {
            if letter == "#" {
                if !firstStack.isEmpty {
                    firstStack.removeLast()
                }
            } else {
                firstStack.append(letter)
            }
        }
        
        for letter in t {
            if letter == "#" {
                if !secondStack.isEmpty {
                    secondStack.removeLast()
                }
            } else {
                secondStack.append(letter)
            }
        }
        
        return firstStack == secondStack
    }
}