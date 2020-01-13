/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Doubly Linked List

 Pretty simmilar to Linked List, but every node has a reference to next and to previous node
*/

import Foundation

example(of: "creating and linking nodes") {
    let list = DoublyLinkedList<Int>()
    list.append(3)
    list.append(2)
    list.append(1)
    list
    print(list)
}

//: [Next](@next)
