/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# BUbble Sort O(n2)

 Repeatedly compare values and swap them up if needed.

 */

import Foundation

example(of: "bubble sort") {
    var array = [9,3,12,4,5]
    print(array)
    bubbleSort(&array)
    print(array)
}

//: [Next](@next)
