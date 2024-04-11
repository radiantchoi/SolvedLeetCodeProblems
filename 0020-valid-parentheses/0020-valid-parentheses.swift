class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for letter in Array(s) {
            if letter == "(" || letter == "{" || letter == "[" {
                stack.append(letter)  
            } else if letter == ")" {
                if !stack.isEmpty && stack[stack.endIndex - 1] == "(" {
                    stack.removeLast()
                } else {
                    return false
                }
            } else if letter == "}" {
                if !stack.isEmpty && stack[stack.endIndex - 1] == "{" {
                    stack.removeLast()
                } else {
                    return false
                }
            } else if letter == "]" {
                if !stack.isEmpty && stack[stack.endIndex - 1] == "[" {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}