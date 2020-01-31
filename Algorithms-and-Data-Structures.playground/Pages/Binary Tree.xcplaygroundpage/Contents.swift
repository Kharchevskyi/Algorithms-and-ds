/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Binary Tree
 
Binary tree - a tree where each node has at most two children. Left and Right children.
 
 ## Interface
* traversal inorder/preorder/postorder `O(n)`

 */

import Foundation

/*
               0
       1             2
   3       5     4         6
7
*/

func createBinaryTree() -> BinaryNode<Int> {
    let zero = BinaryNode(0)

    let one = BinaryNode(1)
    let two = BinaryNode(2)
    let three = BinaryNode(3)
    let four = BinaryNode(4)
    let five = BinaryNode(5)
    let six = BinaryNode(6)

    zero.leftChild = one
    zero.rightChild = two
    one.leftChild = three
    one.rightChild = five
    two.leftChild = four
    two.rightChild = six
    three.leftChild = BinaryNode(7)

    return zero
}

example(of: "pre-order traversal") {
    let tree = createBinaryTree()
    tree.traverslPreOrder { print($0) }
}

example(of: "in-order traversal") {
    let tree = createBinaryTree()
    tree.traverslInOrder { print($0) }
}

example(of: "post-order traversal") {
    let tree = createBinaryTree()
    tree.traverslPostOrder { print($0) }
}

example(of: "height") {
    let tree = createBinaryTree()
    print(height(of: tree))
}

example(of: "serialization") {
    let tree = createBinaryTree()
    let array = serializeBinary(tree: tree)
    print(array)
}
//: [Next](@next)
