import Foundation

public class DoublyLinkedList<Value> {
    private var head: DoubleSideNode<Value>?
    private var tail: DoubleSideNode<Value>?
    
    public var isEmpty: Bool { head == nil }
    
    public var peek: Value? { first()?.value }
    
    public init() {}
    
    public func first() -> DoubleSideNode<Value>? {
        head
    }
    
    public func append(_ element: Value) {
        let newNode = DoubleSideNode(value: element)
        
        guard let tailNode = tail else {
            head = newNode
            tail = newNode
            return
        }
        
        tailNode.next = newNode
        newNode.previous = tailNode
        tail = newNode
    }
    
    public func remove(_ node: DoubleSideNode<Value>) -> Value {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }
}

extension DoublyLinkedList: CustomStringConvertible {
    public var description: String {
        var string = ""
        var current = head
        while let node = current {
            string.append("\(node.value) -> ")
            current = node.next
        }
        return string  
    }
}
