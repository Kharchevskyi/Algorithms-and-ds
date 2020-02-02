/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Quick Sort

 */

import Foundation

example(of: "radix sort") {
    var array = [23, 445, 12333, 21, 1]
    print(array)

    print(quicksort(array))
}

public func quicksort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }

    let pivot = array[array.count / 2]

    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }

    return quicksort(less) + equal + quicksort(greater)
}

//: [Next](@next)
