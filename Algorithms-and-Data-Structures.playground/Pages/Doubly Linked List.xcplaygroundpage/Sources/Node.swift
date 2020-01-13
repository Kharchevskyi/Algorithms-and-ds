import Foundation

public class Node<Value> {
    
    public var value: Value
    public var next: Node<Value>?
    public var previous: Node<Value>?
    
    public init(value: Value) {
        self.value = value
    }
}

//extension Node: CustomStringConvertible {
//    public var description: String {
//        let previousString: String = {
//            guard let previous = previous else { return "" }
//            return "\(previous)"
//        }()
//        
//        let nextString: String = {
//            guard let next = next else { return "" }
//            return "\(next)"
//        }()
//         
//        return String(describing: value)
//    }
//}

