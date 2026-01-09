/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard let head else { return false }

        var slow: ListNode? = head
        var fast: ListNode? = head

        while true {
            fast = fast?.next?.next
            slow = slow?.next

            if fast == nil || slow == nil { return false }
            if fast === slow { break }
        }

        return true
    }
}