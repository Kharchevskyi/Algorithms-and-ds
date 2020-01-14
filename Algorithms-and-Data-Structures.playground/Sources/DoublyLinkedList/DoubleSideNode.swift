import Foundation

public class DoubleSideNode<Value> {
    
    public var value: Value
    public var next: DoubleSideNode<Value>?
    public var previous: DoubleSideNode<Value>?
    
    public init(value: Value) {
        self.value = value
    }
}

