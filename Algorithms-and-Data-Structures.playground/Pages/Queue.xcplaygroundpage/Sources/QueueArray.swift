import Foundation

public class QueueArray<T>: Queue {
    private var array: [T] = []
    
    public var peek: T? { array.first }
    public var isEmpty: Bool { array.isEmpty }
    
    public init() {}
    
    public func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    public func dequeue() -> T? {
        array.isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    public var description: String { String(describing: list) }
} 
