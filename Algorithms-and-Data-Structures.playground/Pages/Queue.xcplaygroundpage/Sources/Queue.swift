import Foundation

public protocol Queue {
    associatedtype Element
    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

public struct QueueArray<T>: Queue {
    private var array: [T] = []
    public init() {}

    public var isEmpty: Bool {
        return array.isEmpty // 1
    }

    public var peek: T? {
        return array.first // 2
    }

    public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }

    public mutating func dequeue() -> T? {
        return isEmpty ? nil : array.removeFirst()
    }
}
