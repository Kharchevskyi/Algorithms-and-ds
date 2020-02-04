/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# BUbble Sort O(n2)

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

example(of: "bubble sort") {
    var array = [9,3,12,4,5]
    print(array)
    bubbleSort(&array)
    print(array)
}

//: [Next](@next)
