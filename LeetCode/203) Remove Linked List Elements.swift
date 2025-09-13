//
//  203) Remove Linked List Elements.swift
//  DSA
//


class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if  head?.val == 0 && head?.next == nil{ return nil }

        var current = head
        var result = ListNode()
        var tail = result

        while current != nil{
            if current!.val != val {
                tail.next = ListNode(current!.val)
                tail = tail.next!
            }
            current = current!.next
        }
        return result.next
    }
}
