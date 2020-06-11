/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Graph
 Data structure that shows a relationship (e.g., connection) between two or more objects
 Graph objects relate to one another through connections called edges.

 ### Links
 [Medium](https://medium.com/swift-algorithms-data-structures/building-graph-algorithms-with-swift-7f3cdb50ac8c)

 */


import Foundation

public class Vertex {
    var key: String?
    var neighbours: Array<Edge>

    init() {
        self.neighbours = Array<Edge>()
    }
}

public class Edge {
    var neighbour: Vertex
    var weight: Int

    init() {
        weight = 0
        self.neighbour = Vertex()
    }
}

public class SwiftGraph {

    private var canvas = Array<Vertex>()
    public var isDirected: Bool = true

    init() {
    }

    //create a new vertex
    func addVertex(key: String) -> Vertex {

        //set the key
        let childVertex: Vertex = Vertex()
        childVertex.key = key

        //add the vertex to the graph canvas
        canvas.append(childVertex)

        return childVertex
    }

    func addEdge(source: Vertex, neighbour: Vertex, weight: Int) {
        let newEdge = Edge()

        newEdge.neighbour = neighbour
        newEdge.weight = weight
        source.neighbours.append(newEdge)


        if isDirected == false {
            let reverseEdge = Edge()

            //establish the reversed properties
            reverseEdge.neighbour = source
            reverseEdge.weight = weight
            neighbour.neighbours.append(reverseEdge)
        }
    }
}


