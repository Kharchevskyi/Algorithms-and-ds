/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # SquaredSortedArray

 take non-empty sorted array and return same sorted squared array

*/

import Foundation

/// Time - O(n) | Space - O(n)
func squaredSorted(_ array: [Int]) -> [Int] {
    var startIndex = 0
    var endIndex = array.count - 1

    var result = Array(repeating: 0, count: array.count)

    for idx in stride(from: array.count - 1, through: 0, by: -1) {
        let rightValue = array[endIndex]
        let leftValue = array[startIndex]

        print("idx = \(idx), left = \(leftValue) right = \(rightValue)")

        if abs(leftValue) > abs(rightValue) {
            result[idx] = leftValue * leftValue
            startIndex += 1
        } else {
            result[idx] = rightValue * rightValue
            endIndex -= 1
        }
        print(result)
    }

    return result
}

print(squaredSorted([12, -2, 4, 5]))
