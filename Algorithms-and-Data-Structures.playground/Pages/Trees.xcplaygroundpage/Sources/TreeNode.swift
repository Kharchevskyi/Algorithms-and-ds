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
