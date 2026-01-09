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
    func detectCycle(_ head: ListNode?) -> ListNode? {
        guard let head else { return nil }

        var slow: ListNode? = head
        var fast: ListNode? = head

        while true {
            slow = slow?.next
            fast = fast?.next?.next

            if fast == nil || slow == nil { return nil }

            if slow === fast { break }
        }

        var entry: ListNode? = head

        while slow !== entry {
            entry = entry?.next
            slow = slow?.next
        }

        return entry
    }
}