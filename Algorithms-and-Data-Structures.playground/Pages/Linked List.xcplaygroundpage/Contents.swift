/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Linked List
 
 Uniderectional linear sequence of elements where each element points to the next.  
 ![Example](Ll.png)
 
 ## Interface
 * push `O(1)`
 * pop `O(1)`
 * append `O(1)`
 * head first insertions `O(1)`
 * tail insertion `O(n)`
 * index insertion `O(n)`

 ### Pros
 1. Reliable performance
 1. Constant time insertion
 
 ### Links
 [Wikipedia](https://en.wikipedia.org/wiki/Linked_list)
*/
import Foundation

example(of: "creating and linking nodes") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)

    node1.next = node2
    node2.next = node3

    print(node1)
}

example(of: "push") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print(list)
}

example(of: "append") {
    var list = LinkedList<Int>()
    list.append(1)
    list.append(2)
    list.append(3)

    print(list)
}

example(of: "inserting at index") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print("Before inserting: \(list)")
    
    var middleNode = list.node(at: 1)!
    for _ in 1...4 {
        middleNode = list.insert(-1, after: middleNode)
    }
    print("After inserting: \(list)")
}

example(of: "pop") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print("Before popping list: \(list)")
    let poppedValue = list.pop()
    print("After popping list: \(list)")
    print("Popped value: " + String(describing: poppedValue))
}


example(of: "remove last") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print("Before removing last node: \(list)")
    let removedValue = list.removeLast()

    print("After removing last node: \(list)")
    print("Removed value: " + String(describing: removedValue))
}

example(of: "removing a node after a particular node") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print("Before removing at particular index: \(list)")
    let index = 2
    let node = list.node(at: index - 1)!
    let removedValue = list.remove(after: node)

    print("After removing at index \(index): \(list)")
    print("Removed value: " + String(describing: removedValue))
}

example(of: "using collection") {
    var list = LinkedList<Int>()
    for i in 0...9 {
        list.append(i)
    }

    print("List: \(list)")
    print("First element: \(list[list.startIndex])")
    print("Array containing first 3 elements: \(Array(list.prefix(3)))")
    print("Array containing last 3 elements: \(Array(list.suffix(3)))")

    let sum = list.reduce(0, +)
    print("Sum of all values: \(sum)")
}

example(of: "array copy on write") {
    let array1 = [1, 2]
    var array2 = array1

    print("array1: \(array1)")
    print("array2: \(array2)")

    print("---After adding 3 to array 2---")
    array2.append(3)
    print("array1: \(array1)")
    print("array2: \(array2)")
}

example(of: "linked list cow") {
    var list1 = LinkedList<Int>()
    list1.append(1)
    list1.append(2)
    var list2 = list1
    print("List1: \(list1)")
    print("List2: \(list2)")

    print("After appending 3 to list2")
    list2.append(3)
    print("List1: \(list1)")
    print("List2: \(list2)")
}

example(of: "Reversed") {
    var list1 = LinkedList<Int>()
    list1.append(1)
    list1.append(2)
    list1.append(3)

//    print(list1.printReversed())
//    printInReverse(list1)
}

example(of: "getting the middle node") {
    var list = LinkedList<Int>()
    list.push(4)
    list.push(3)
    list.push(2)
    list.push(1)

    print(list)

//    if let middleNode = getMiddle(list) {
//        print(middleNode)
//    }
}

// MARK: - Reverse
extension LinkedList {
    mutating func reverse() {
        tail = head
        var prev = head
        var current = head?.next
        prev?.next = nil

        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        head = prev
    }
}

example(of: "reversing a list") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)

    print("Original list: \(list)")
    list.reverse()
    print("Reversed list: \(list)")
}

// MARK: - Merge
func mergeSorted<T: Comparable>(
    _ left: LinkedList<T>,
    _ right: LinkedList<T>
) -> LinkedList<T> {
    guard !left.isEmpty else {
        return right
    }

    guard !right.isEmpty else {
        return left
    }

    var newHead: Node<T>?
    var tail: Node<T>?

    var currentLeft = left.head
    var currentRight = right.head

    if let leftNode = currentLeft, let rightNode = currentRight {
        if leftNode.value < rightNode.value {
            newHead = leftNode
            currentLeft = leftNode.next
        } else {
            newHead = rightNode
            currentRight = rightNode.next
        }
        tail = newHead
    }

    while let leftNode = currentLeft, let rightNode = currentRight {
        if leftNode.value < rightNode.value {
            tail?.next = leftNode
            currentLeft = leftNode.next
        } else {
            tail?.next = rightNode
            currentRight = rightNode.next
        }
        tail = tail?.next
    }

    if let leftNodes = currentLeft {
        tail?.next = leftNodes
    }

    if let rightNodes = currentRight {
        tail?.next = rightNodes
    }

    var list = LinkedList<T>()
    list.head = newHead
    list.tail = {
        while let next = tail?.next {
            tail = next
        }
        return tail
    }()
    return list
}

example(of: "merging two lists") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    var anotherList = LinkedList<Int>()
    anotherList.push(-1)
    anotherList.push(-2)
    anotherList.push(-3)
    print("First list: \(list)")
    print("Second list: \(anotherList)")
    let mergedList = mergeSorted(list, anotherList)
    print("Merged list: \(mergedList)")
}


//: [Next](@next)

 
