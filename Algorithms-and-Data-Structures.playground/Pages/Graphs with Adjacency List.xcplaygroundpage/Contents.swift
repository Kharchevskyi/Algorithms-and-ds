//: [Previous](@previous)

import Foundation

public struct Vertex<T: Hashable>: Hashable, CustomStringConvertible {
    public var description: String {
        "\(data)"
    }
    var data: T
}

public enum EdgeType {
    case directed, undirected
}

public struct Edge<T: Hashable> {
    public var source: Vertex<T>
    public var destination: Vertex<T>
    public let weight: Double?
}



//: [Next](@next)
