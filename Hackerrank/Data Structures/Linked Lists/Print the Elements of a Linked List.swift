//
//  Print the Elements of a Linked List.swift
//  DSA


func printLinkedList(head: SinglyLinkedListNode?) -> Void {
    var tail = head
    
    while tail != nil{
        print(tail!.data)
        tail = tail?.next
    }
}
