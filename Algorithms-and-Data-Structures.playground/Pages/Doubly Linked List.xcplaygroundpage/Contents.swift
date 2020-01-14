/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Doubly Linked List

 Pretty simmilar to Linked List, but every node has a reference to next and to previous node
 
 ## Interface
 * append `O(1)`
 * remove `O(1)`
 
*/

import Foundation

example(of: "doubly linked nodes") {
    let list = DoublyLinkedList<Int>()
    list.append(3)
    list.append(2)
    list.append(1)
    
    
    print(list)
    list.remove(Node(value: 2))
}

//: [Next](@next)
