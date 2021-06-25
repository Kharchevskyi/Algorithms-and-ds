/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Insertion Sort O(n2)

 Same as Bubble sort but swap only at the end of each pass
 best time complexity is O(n) if data sorted

 */

import Foundation

public func insertionSort<T>(_ collection: inout T)
    where T: BidirectionalCollection & MutableCollection,
    T.Element: Comparable
{
        guard collection.count >= 2 else { return }

        for current in collection.indices {
            var shifting = current
            while shifting > collection.startIndex {
                let previous = collection.index(before: shifting)
                if collection[shifting] < collection[previous] {
                    collection.swapAt(shifting, previous)
                } else {
                    break
                }
                shifting = previous
            }
        }
}

extension Array where Element: Comparable {

    public mutating func insertionSort() {
        for iterationIndex in 0 ..< self.count {

            var swapIndex = iterationIndex

            while swapIndex > 0 {
                if self[swapIndex] < self[swapIndex - 1] {
                    swapAt(swapIndex, swapIndex - 1)
                    swapIndex -= 1
                } else {
                    break
                }

            }
        }
    }
}

func insertionSort(_ array: inout [Int]) -> [Int] {
    for x in 1 ..< array.count {
        var y = x
        while y > 0 && array[y] < array[y - 1] {
            array.swapAt(y - 1, y)
            y -= 1
        }
    }
    return array
}

example(of: "insertion sort") {
    var array = [9,3,12,4,5]
    print(array)
    insertionSort(&array)
    print(array)
}


//: [Next](@next)
