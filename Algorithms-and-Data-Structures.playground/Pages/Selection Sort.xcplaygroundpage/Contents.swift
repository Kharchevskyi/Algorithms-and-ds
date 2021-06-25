/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Selection Sort O(n2)
 Time = O(n^2) | Space = O(1)

 Same as Bubble sort but swap only at the end of each pass

 */

import Foundation

public func selectionSort<T>(_ collection: inout T)
    where T: MutableCollection, T.Element: Comparable {
        guard collection.count >= 2 else { return }

        for current in collection.indices {
            var lowest = current
            var other = collection.index(after: current)
            while other < collection.endIndex {
                if collection[lowest] > collection[other] {
                    lowest = other
                }
                other = collection.index(after: other)
            }
            if lowest != current {
                collection.swapAt(lowest, current)
            }
        }
}

public func selectionSort(_ array: inout [Int]) {
    var currentIdx = 0

    while currentIdx < array.count - 1 {
        var smallestIndex = currentIdx

        // find index of smallest element
        // iterate from +1 to the end
        for i in currentIdx + 1 ..< array.count {
            // if array[i] < then this is the smallest
            if array[smallestIndex] > array[i] {
                smallestIndex = i
            }
        }

        array.swapAt(currentIdx, smallestIndex)
        currentIdx += 1
    }
}

example(of: "selection sort") {
    var array = [9,3,12,4,5]
    print(array)
    selectionSort(&array)
    print(array)
}

example(of: "selection sort") {
    var array = [9,3,12,4,5]
    print(array)
    selectionSort(&array)
    print(array)
}
//: [Next](@next)
