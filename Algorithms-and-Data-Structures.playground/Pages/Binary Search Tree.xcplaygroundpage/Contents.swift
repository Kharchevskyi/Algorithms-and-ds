/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Binary Search Trees

Binary search tree - data structure where every left child must be less than the value of it's parrent. And every right child greater or equal to the parent.

 ## Interface
 * Lookup `O(log n)`
 * Insert `O(log n)`
 * Removal `O(log n)`

 */

import Foundation

func balancedTree() -> BinarySearchTree<Int> {
    var bst = BinarySearchTree<Int>()
    bst.insert(3)
    bst.insert(1)
    bst.insert(4)
    bst.insert(0)
    bst.insert(2)
    bst.insert(5)
    return bst
}

example(of: "creating BST") {
    var bst = BinarySearchTree<Int>()
    (0...5).forEach {
        bst.insert($0)
    }
    bst.root?.traverslInOrder(visit: { print($0) })
}

example(of: "search in BST") {
    let tree = balancedTree()
    print(tree.contains(3))
    print(tree.contains(33))
}

example(of: "removal in BST") {
    var tree: BinarySearchTree<Int> = balancedTree()
    tree.remove(3)
    tree.root?.traverslInOrder(visit: { print($0) })

}


//: [Next](@next)
