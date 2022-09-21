/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var length = 1
        var traverse = head
        
        while traverse?.next != nil {
            traverse = traverse?.next
            length += 1
        }
        
        length /= 2
        
        var result = head
        while length > 0 {
            result = result?.next
            length -= 1
        }
        
        return result
    }
}