//
//  19) Remove Nth Node From End of List.swift
//  DSA
//


class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var array = [Int]()
        var current = head
        let result = ListNode()
        var tail = result


        while current != nil{
            array.append(current!.val)
            current = current!.next
        }

        array.remove(at: array.count - n)

        for i in array{
            tail.next = ListNode(i)
            tail = tail.next!
        }

        return result.next
    }
}
