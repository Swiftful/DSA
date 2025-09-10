class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.allSatisfy({ $0 == nil }) { return nil }
        
        var array = [Int]()
        var result = ListNode()
        var tail = result
        var cur1: ListNode?
        var cur2: ListNode?
        
        for i in 0..<lists.count / 2{
            cur1 = lists[i]
            while cur1 != nil{
                array.append(cur1!.val)
                cur1 = cur1?.next
            }
        }
        for i in (lists.count / 2)..<lists.count{
            cur2 = lists[i]
            while cur2 != nil{
                array.append(cur2!.val)
                cur2 = cur2?.next
            }
        }
        
        array.sort()
        
        for i in array{
            tail.next = ListNode(i)
            tail = tail.next!
        }
        
        return result.next
    }
}
