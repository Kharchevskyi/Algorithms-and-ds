/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # TwoNumberSum

 Function that take non-empty array of integers and an target sum integer
 Return array of integers which sum is target sum
 Return empty array if there are no

*/

import Foundation

var array = [12, 323 ,11 , -1 , 110, 10]
var target = 10

/// Time - O(n^2) | Space = O(1)
func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    for i in 0 ..< array.count - 1{
        let first = array[i]

        for j in i+1 ..< array.count - 1 {
            let second = array[j]

            if first + second == targetSum {
                return [first, second]
            }
        }
    }

    return []
}

/// Time - O(n) | Space = O(n)
func twoNumberSumWithHashTable(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var hashTable: [Int: Bool] = [:]

    for x in array {
        let potentialMatch = targetSum - x

        if let isExistNumber = hashTable[potentialMatch], isExistNumber {
            return [x, potentialMatch]
        } else {
            hashTable[x] = true
        }
    }

    return []
}

/// Time - On(log(n)) | Space = O(1)
func twoNumberSumSort(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    let sorted = array.sorted()

    var left = 0
    var right = sorted.count - 1

    while left < right {
        let leftMost = sorted[left]
        let rightMost = sorted[right]

        let currentSum = leftMost + rightMost

        if currentSum == targetSum {
            return [leftMost, rightMost]
        } else if currentSum < targetSum {
            left += 1
        } else if currentSum > targetSum {
            right -= 1
        }
    }

    return []
}

twoNumberSum(&array, target)
twoNumberSumWithHashTable(&array, target)
twoNumberSumSort(&array, target)
