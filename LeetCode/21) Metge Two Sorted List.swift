class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var arr = [Int]()
        var cur1 = list1
        var cur2 = list2
        
        while cur1 != nil{
            arr.append(cur1!.val)
            cur1 = cur1?.next
        }
        while cur2 != nil{
            arr.append(cur2!.val)
            cur2 = cur2?.next
        }
        
        if arr.isEmpty { return nil }
        arr.sort()
        
        var sum = ListNode()
        var dum = sum
        for i in arr{
            dum.next = ListNode(i)
            dum = dum.next!
        }
        return sum.next
    }
}

