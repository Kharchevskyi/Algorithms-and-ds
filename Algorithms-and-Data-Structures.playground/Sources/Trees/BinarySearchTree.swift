import Foundation


public struct BinarySearchTree<T: Comparable> {
    public private(set) var root: BinaryNode<T>?

    public init() {}
}

extension BinarySearchTree: CustomStringConvertible {
    public var description: String {
        guard let root = root else { return "empty" }
        return String(describing: root)
    }
}
