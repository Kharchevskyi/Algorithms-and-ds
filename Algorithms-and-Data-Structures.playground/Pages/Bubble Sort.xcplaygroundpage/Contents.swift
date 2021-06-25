/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Bubble Sort

Best
 Time O(n) | Space O(1)
Average
 Time O(n2) | Space O(1)
Worst
 Time O(n2) | Space O(1)

Repeatedly compare values and swap them up if needed.
 */

import Foundation

public func bubbleSort<Element>(_ collection: inout [Element]) where Element: Comparable {
    guard collection.count >= 2 else { return }

    var isSwapped = true
    while isSwapped {
        isSwapped = false
        (1..<collection.count).forEach { index in
            if collection[index] < collection[index-1] {
                collection.swapAt(index - 1, index)
                isSwapped = true
            }
        }
    }
}

func bubbleSort(array: inout [Int]) -> [Int] {
    var isSorted = false

    while !isSorted {
        isSorted = true
        for i in 0 ..< array.count - 1 {
            if array[i] > array[i + 1] {
                isSorted = false
                array.swapAt(i, i + 1)
            }
        }
    }

    return array
}

example(of: "bubble sort") {
    var array = [9,3,12,4,5]
    print(array)
    bubbleSort(&array)
    print(array)

}

example(of: "bubble sort") {
    var array = [9,3,12,4,5]
    print(array)
    bubbleSort(array: &array)
    print(array)
}

//: [Next](@next)
