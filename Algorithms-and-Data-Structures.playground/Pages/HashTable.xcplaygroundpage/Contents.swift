//: [Previous](@previous)
/*:

 https://medium.com/flawless-app-stories/how-to-implement-a-hashtable-using-swift-aea632ee75ac
 Basically their insertion and fetch are made in constant time — O(1)
*/

import Foundation

class HashTableNode<T> {
    var value: T
    var key: String
    var nextNode: HashTableNode?

    init(value: T, key: String) {
        self.value = value
        self.key = key
    }
}


enum InsertionStatus {
    case success, collision, replacement
}


class HashTable<T> {
    private var bucket: [HashTableNode<T>?]

    init(bucketSize: Int) {
        bucket = Array(repeating: nil, count: bucketSize)
    }

    @discardableResult
    func addElement(_ element: T, forKey hashKey: String) -> InsertionStatus  {
        let node = HashTableNode(value: element, key: hashKey)

        let index = findIndex(forKey: hashKey)

        var auxNode = bucket[index]

        if auxNode == nil {
            bucket[index] = node
            return .success
        }

        while auxNode?.nextNode != nil {
            if auxNode?.key == hashKey || auxNode?.nextNode?.key == hashKey {
                auxNode = [auxNode, auxNode?.nextNode].first(where: {$0?.key == hashKey})!
                auxNode?.value = element
                return .replacement
            }
            auxNode = auxNode?.nextNode
        }
        auxNode?.nextNode = node
        return .collision
    }

    private func findIndex(forKey hashKey: String) -> Int {
        if hashKey.isEmpty { return -1 }
        return hashKey.unicodeScalars
            .reduce(0, { $0 + Int($1.value) }) % bucket.count
    }

    func getElement(forKey hashKey: String) -> T? {
        let index = findIndex(forKey: hashKey)
        var node = bucket[index]
        while node != nil {
            if node?.key == hashKey { return node?.value }
            else {
                node = node?.nextNode
            }
        }
        return nil
    }

    func deleteElementForKey(_ key: String) -> Bool {
        let index = findIndex(forKey: key)
        var node = bucket[index]
        if node?.key == key {
            bucket[index] = node?.nextNode
            return true
        }
        while node?.nextNode != nil {
            if node?.nextNode?.key == key {
                node?.nextNode = node?.nextNode?.nextNode
                return true
            }
            node = node?.nextNode
        }
        return false
    }
}


// *************************

class Node<T> {
    var key: T?
    var next: Node?
}

enum Result {
    case Success
    case Collision
    case NotFound
    case NotSupported
    case Fail
}

 
