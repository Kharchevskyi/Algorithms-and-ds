/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Breadth-first search
 ### Time = O(V+E) | Space = O(V)

 Traverse through tree in breadth first order

         A
    B    C    D
  E      F
 G

 RESULT = [A,B,C,D,E,F]
*/

import Foundation

extension TreeNode {
    func breadthFirstSearch() -> [T] {
        let queue = QueueArray<TreeNode>()

        queue.enqueue(self)

        var result: [T] = []

        while !queue.isEmpty {
            if let node = queue.dequeue() {
                result.append(node.value)
                for child in node.children {
                    queue.enqueue(child)
                }
            }
        }

        return result
    }
}

func test() {
    let a = TreeNode<String>("a")
    let b = TreeNode<String>("b")
    b.add(TreeNode<String>("e"))
    b.add(TreeNode<String>("f"))
    let c = TreeNode<String>("c")
    let d = TreeNode<String>("d")
    a.add(b)
    a.add(c)
    a.add(d)

    print(a.breadthFirstSearch())
}

test()
