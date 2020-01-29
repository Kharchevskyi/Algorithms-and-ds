import Foundation

public class BinaryNode<T> {
    public var value: T
    public var leftChild: BinaryNode?
    public var rightChild: BinaryNode?

    public init(_ value: T) {
        self.value = value
    }
}

public extension BinaryNode {
    func traverslPreOrder(visit: (T) -> Void) {
        visit(value)
        leftChild?.traverslPreOrder(visit: visit)
        rightChild?.traverslPreOrder(visit: visit)
    }
}

public extension BinaryNode {
    func traverslInOrder(visit: (T) -> Void) {
        leftChild?.traverslInOrder(visit: visit)
        visit(value)
        rightChild?.traverslInOrder(visit: visit)
    }
}

public extension BinaryNode {
    func traverslPostOrder(visit: (T) -> Void) {
        leftChild?.traverslInOrder(visit: visit)
        rightChild?.traverslInOrder(visit: visit)
        visit(value)
    }
}


public extension BinaryNode {
    var description: String {
        String(describing: self.value)
            + String(describing: self.leftChild)
            + String(describing: self.rightChild)
    }
}
public func height<T>(of node: BinaryNode<T>?) -> Int {
    guard let node = node else {
        return -1
    }
    return 1 + max(
        height(of: node.leftChild),
        height(of: node.rightChild)
    )
}

public func serializeBinary<T>(tree: BinaryNode<T>?) -> Array<T?> {
    var result: [T?] = []
    tree?.traverslPreOrder(visit: { result.append($0) })
    return result
}
