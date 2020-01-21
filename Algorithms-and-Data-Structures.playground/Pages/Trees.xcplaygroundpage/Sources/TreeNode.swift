import Foundation

public class TreeNode<T> {

    public var value: T
    public var children: [TreeNode] = []

    public init(_ value: T) {
        self.value = value
    }

    public func add(_ child: TreeNode) {
        children.append(child)
    }
}

public extension TreeNode {
    // Loop recurseviely
    func forEachDeepFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach { $0.forEachDeepFirst(visit: visit) }
    }
}

public extension TreeNode {
    // Loop through levels ov Tree
    func forEachLevelOrder(visit: (TreeNode) -> Void) {
        visit(self)
        let queue = QueueArray<TreeNode>()
        children.forEach {
            queue.enqueue($0)
        }
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0) }
        }
    }
}
