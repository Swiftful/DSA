//
//  141) Linked List Cycle.swift
//  DSA
//

extension ListNode: Hashable{
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs === rhs
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
    }
}

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var set = Set<ListNode>()
        var current = head

        while current != nil{
            if set.contains(current!){ return true }
            set.insert(current!)
            current = current?.next
        }
        return false
    }
}
