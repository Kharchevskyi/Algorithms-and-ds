/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # ValidateSubsequence

*/
import Foundation

func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    if array.isEmpty {
        return true
    }

    var arrIdx = 0
    var seqIdx = 0

    while arrIdx < array.count && seqIdx < sequence.count  {
        if array[arrIdx] == sequence[seqIdx] {
            seqIdx += 1
        }
        arrIdx += 1
    }

    return seqIdx == sequence.count
}

var array = [1, 23, 5, -1, 1212]
var sequence = [23, -1]

isValidSubsequence(array, sequence)
