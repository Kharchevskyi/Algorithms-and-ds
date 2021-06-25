/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Binary Search
 Time = O(log n)
 Space = O(n)
 
 * The collection should have indexes
 * The collection must be sorted
 */

import Foundation

extension RandomAccessCollection where Element: Comparable {
    func binarySearch(value: Element, in range: Range<Index>? = nil) -> Index? {

        let range = range ?? startIndex ..< endIndex

        guard range.lowerBound < range.upperBound else { return nil }

        let size = distance(from: range.lowerBound, to: range.upperBound)

        let middle = index(range.lowerBound, offsetBy: size / 2)

        if self[middle] == value {
            return middle
        }

        return self[middle] > value
            ? binarySearch(value: value, in: range.lowerBound..<middle)
            : binarySearch(value: value,in: index(after: middle)..<range.upperBound)
    }
}

func binarySearch(array: [Int], target: Int) -> Int? {
    var leftIdx = 0
    var rightIdx = array.count - 1


    while leftIdx <= rightIdx {
        let middle = (leftIdx + rightIdx) / 2
        let middleValue = array[middle]
        print("leftIdx = \(leftIdx) rightIdx = \(rightIdx) middle = \(middle)")

        if middleValue == target {
            return middle
        } else if middleValue > target {
            rightIdx = middle - 1
        } else {
            leftIdx = middle + 1
        }
    }

    return nil
}

func binarySearch(in array: [Int], target: Int) -> Int? {
    binarySearchHelper(in: array, target: target, leftPointer: 0, rightPointer: array.count - 1)
}

private func binarySearchHelper(in array: [Int], target: Int, leftPointer: Int, rightPointer: Int) -> Int? {
    if leftPointer > rightPointer {
        return nil
    }

    let middlePointer = (leftPointer + rightPointer) / 2
    let potentialMatch = array[middlePointer]

    if potentialMatch == target {
        return middlePointer
    } else if potentialMatch > target {
        return binarySearchHelper(in: array, target: target, leftPointer: leftPointer, rightPointer: middlePointer - 1)
    } else {
        return binarySearchHelper(in: array, target: target, leftPointer: middlePointer + 1, rightPointer: rightPointer)
    }
}

example(of: "Binary search") {
    let array = [1,3,5,6,8,9,11,12,14,17]
    print(array.binarySearch(value: 5) ?? "not found")
    print(array.binarySearch(value: 115) ?? "not found")
}

example(of: "Binary search 2") {
    print(binarySearch(array: [0, 1, 21, 33, 45, 45, 61, 71, 72, 73], target: 33) ?? "N/A")
    print(binarySearch(in: [0, 1, 21, 33, 45, 45, 61, 71, 72, 73], target: 33) ?? "N/A")
}
//: [Next](@next)
