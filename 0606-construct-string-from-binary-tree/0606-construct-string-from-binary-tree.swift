/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func tree2str(_ root: TreeNode?) -> String {
        guard let root = root else {
            return ""
        }
        
        let value = root.val
        var result = ""
        result += String(value)
        
        let leftResult = tree2str(root.left)
        let rightResult = tree2str(root.right)
        
        if leftResult.isEmpty {
            if !rightResult.isEmpty {
                result += "()"
                result += "(\(rightResult))"
            }
        } else {
            result += "(\(leftResult))"
            
            if !rightResult.isEmpty {
                result += "(\(rightResult))"
            }
        }

        return result
    }
}