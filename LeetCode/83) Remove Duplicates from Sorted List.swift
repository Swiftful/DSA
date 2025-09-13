//
//  83) Remove Duplicates from Sorted List.swift
//  DSA
//

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode?{
        var current = head
        var count = -1000
        let result = ListNode()
        var tail = result
        
        while current != nil{
            if count != current!.val{
                count = current!.val
                tail.next = ListNode(count)
                tail = tail.next!
            }
            current = current?.next
        }
        return result.next
    }
}
