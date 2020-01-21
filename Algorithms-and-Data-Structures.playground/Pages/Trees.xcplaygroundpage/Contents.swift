/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Trees

Tree is a Data Structure whic represent and hierarchical relationships between parent and child nodes in this data structure, manage sorted data, and used to perform fast lookup operations.
Trees are starting from the top and bracnching to the bottom.
In a tree every child has one parent node, and every parent node. Top most node called *Root* of the tree and has no parent. And last nodes in a tree called *Leaf*. Leafs has no parents
![Example](tree.png)


 ## Interface



 ## Links

[Tree](https://www.tutorialspoint.com/data_structures_algorithms/tree_data_structure.htm)

 */

import Foundation

var str = "Hello, playground"
example(of: "Tree") {
    let tree = TreeNode("Person")

    let id = TreeNode("id")
    let adress = TreeNode("Adress")
    let city = TreeNode("City")
    let street = TreeNode("Street")
    let phone = TreeNode("Phone")
    let mobilePhone = TreeNode("Mobile")
    let homePhone = TreeNode("Home")

    tree.add(adress)
}

/*
            Person
 id        Adresss             Phone
        City    Street      Home    Mobile

 */
//: [Next](@next)
