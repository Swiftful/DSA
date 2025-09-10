//
//  Delete a Node.swift
//  DSA
//

func deleteNode(llist: SinglyLinkedListNode?, position: Int) -> SinglyLinkedListNode? {
    // Write your code here
    var array = [Int]()
    var result = SinglyLinkedListNode(nodeData: 0)
    var tail = result
    var current = llist
    
    while current != nil{
        array.append(current!.data)
        current = current?.next
    }
    array.remove(at: position)
    
    for i in array{
        tail.next = SinglyLinkedListNode(nodeData: i)
        tail = tail.next!
    }
    
    return result.next
}
