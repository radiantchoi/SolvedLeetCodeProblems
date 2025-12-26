/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */

function reverseList(head: ListNode | null): ListNode | null {
    let current = null;

    while (head !== null) {
        const newNode = new ListNode(head.val);
        newNode.next = current;
        current = newNode;
        head = head.next;
    }

    return current;
};