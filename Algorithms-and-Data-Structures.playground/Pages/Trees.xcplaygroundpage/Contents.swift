/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Trees

Tree is a Data Structure whic represent and hierarchical relationships between parent and child nodes in this data structure, manage sorted data, and used to perform fast lookup operations.
Trees are starting from the top and bracnching to the bottom.
In a tree every child has one parent node, and every parent node. Top most node called *Root* of the tree and has no parent. And last nodes in a tree called *Leaf*. Leafs has no parents

![Example](tree.png)

 ## Links

[Tree](https://www.tutorialspoint.com/data_structures_algorithms/tree_data_structure.htm)

 */

import Foundation

func createTree() -> TreeNode<String> {
    let person = TreeNode("Person")

    let id = TreeNode("id")
    let adress = TreeNode("Adress")
    let city = TreeNode("City")
    let street = TreeNode("Street")
    let phone = TreeNode("Phone")
    let mobilePhone = TreeNode("Mobile")
    let homePhone = TreeNode("Home")

    person.add(id)
    person.add(adress)
    person.add(phone)
    phone.add(mobilePhone)
    phone.add(homePhone)
    adress.add(city)
    adress.add(street)

    return person
}

example(of: "Tree") {
    let tree = createTree()

    print("*** - Deep First iteration")
    tree.forEachDeepFirst(visit: { print($0.value) })
    print("*** - Level Order iteration")
    tree.forEachLevelOrder(visit: { print($0.value) })
}

/*
            Person
 id        Adresss             Phone
        City    Street      Home    Mobile

 */

example(of: "Search in a tree") {
    let tree = createTree()

    if let someData = tree.search("City") {
        print("tree contains data about the \(someData)")
    }
}
//: [Next](@next)
