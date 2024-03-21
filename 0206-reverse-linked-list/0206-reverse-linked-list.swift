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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var nodes = head
        
        var values = [Int?]()
        
        while true {
            values.append(nodes?.val)
            
            if nodes?.next == nil {
                break
            }
            nodes = nodes?.next
        }
        
        var rails = head
        while rails != nil {
            rails?.val = values.removeLast()!
            rails = rails?.next
        }
        
        return head
    }
}