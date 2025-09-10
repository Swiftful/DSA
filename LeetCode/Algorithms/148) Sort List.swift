class Solution {
    func sortList(_ head: ListNode?) -> ListNode? {
        if head?.val == 0 && head?.next == nil { return ListNode() }
        
        var array = [Int]()
        var current = head
        
        while current != nil{
            array.append(current!.val)
            current = current?.next
        }
        array.sort()
        
        let result = ListNode()
        var tail = result
        for i in array{
            tail.next = ListNode(i)
            tail = tail.next!
        }

        return result.next
    }
}
