import Foundation

public struct Stack<Element> {

    private var storage: [Element] = []

    public init() { }

    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    public mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        let topDivider = "----top----\n"
        let bottomDivider = "\n-----------"

        let stackElements = storage
            .map { "\($0)" }
            .reversed()
            .joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(storage: [Element]) {
        self.storage = storage
    }
    
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
