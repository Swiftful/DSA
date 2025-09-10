//
//  Print in Reverse.swift
//  DSA
//

func reversePrint(llist: SinglyLinkedListNode?) -> Void {
    // Write your code here
    var array = [Int]()
    var current = llist
    
    while current != nil{
        array.append(current!.data)
        current = current!.next
    }
    array.reverse()
    
    for i in array{
        print(i)
    }
}
