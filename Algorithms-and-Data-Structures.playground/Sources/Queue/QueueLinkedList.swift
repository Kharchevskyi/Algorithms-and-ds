import Foundation

public class QueueLinkedList<T>: Queue {
    private var list = DoublyLinkedList<T>()
    
    public var peek: T? { list.peek }
    public var isEmpty: Bool { list.isEmpty }
    
    public init() {}
    
    public func enqueue(_ element: T) -> Bool {
        list.append(element)
        return true
    }
    
    public func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first() else {
            return nil
        }
        return list.remove(element)
    }
}

extension QueueLinkedList: CustomStringConvertible {
    public var description: String { String(describing: list) }
} 
