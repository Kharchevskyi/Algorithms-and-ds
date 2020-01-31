import Foundation

struct Heap<T: Equatable> {
    typealias SortElementsClosure = (T, T) -> Bool

    var elements: [T] = []
    let sort: SortElementsClosure

    var isEmpty: Bool {
        elements.isEmpty
    }

    var count: Int {
        elements.count
    }

    init(_ sort: @escaping SortElementsClosure) {
        self.sort = sort
    }

    func peek() -> T? {
        elements.first
    }

    func leftChildIndex(ofParentAt index: Int) -> Int {
        (2 * index) + 1
    }

    func rightChildIndex(ofParentAt index: Int) -> Int {
        (2 * index) + 2
    }

    func parentIndex(ofChildAt index: Int) -> Int {
        (index - 1) / 2
    }
}

// MARK: - remove
extension Heap {
    mutating func remove() -> T? {
        guard !isEmpty else {
            return nil
        }

        elements.swapAt(0, count - 1)
        defer {
            siftDown(from: 0)
        }

        return elements.removeLast()
    }

    mutating func siftDown(from index: Int) {
        var parent = index

        while true {
            let left = leftChildIndex(ofParentAt: parent)
            let right = rightChildIndex(ofParentAt: parent)

            var candidate = parent

            if left < count && sort(elements[left], elements[candidate]) {
                candidate = left
            }

            if right < count && sort(elements[right], elements[candidate]) {
                candidate = right
            }

            if candidate == parent {
                return
            }
            
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }

    mutating func remove(at index: Int) -> T? {
        guard index < elements.count else {
            return nil
        }
        if index == elements.count - 1 {
            return elements.removeLast()
        } else {
            elements.swapAt(index, elements.count - 1)
            defer {
                siftDown(from: index)
                siftUp(from: index)
            }
            return elements.removeLast()
        }
    }
}

// MARK - Insert
extension Heap {
    mutating func insert(_ element: T) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }

    mutating func siftUp(from index: Int) {
        var child = index
        var parent = parentIndex(ofChildAt: child)
        while child > 0 && sort(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = parentIndex(ofChildAt: child)
        }
    }
}
