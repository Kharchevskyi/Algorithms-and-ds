/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Binary Search O(log n)

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

example(of: "Binary search") {
    let array = [1,3,5,6,8,9,11,12,14,17]
    print(array.binarySearch(value: 5) ?? "not found")
    print(array.binarySearch(value: 115) ?? "not found")
}

//: [Next](@next)
