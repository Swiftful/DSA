//
//  Reverse a linked list.swift
//  DSA
//

func reverse(llist: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    // Write your code here
    var array = [Int]()
    var current = llist
    var result = SinglyLinkedListNode(nodeData: 0)
    var tail = result
    
    while current != nil{
        array.append(current!.data)
        current = current!.next
    }
    array.reverse()
    
    for i in array{
        tail.next = SinglyLinkedListNode(nodeData: i)
        tail = tail.next!
    }
    
    return result.next
}
