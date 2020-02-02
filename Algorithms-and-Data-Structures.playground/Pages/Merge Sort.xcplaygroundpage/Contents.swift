/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Merge Sort O(n*Log n)

 */

import Foundation

example(of: "insertion sort") {
    var array = [9,3,12,4,5]
    print(array)

    print(mergeSort(array))
}

//: [Next](@next)

public func mergeSort<Element>(_ array: [Element]) -> [Element]
    where Element: Comparable {

    guard array.count > 1 else { return array }


    let middle = array.count / 2
    let leftArray = Array(array[..<middle])
    let rightArray = Array(array[middle...])

    let left = mergeSort(leftArray)
    let right = mergeSort(rightArray)

    return merge(left, right)
}

private func merge<Element>(
    _ left: [Element],
    _ right: [Element]
) -> [Element] where Element: Comparable {
    var leftIndex = 0
    var rightIndex = 0

    var result: [Element] = []

    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]

        if leftElement < rightElement {
            result.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            result.append(rightElement)
            rightIndex += 1
        } else {
            result.append(leftElement)
            leftIndex += 1
            result.append(rightElement)
            rightIndex += 1
        }
    }

    if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
    }

    if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
    }

    return result
}
