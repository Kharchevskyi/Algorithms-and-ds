/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Selection Sort O(n2)

 Same as Bubble sort but swap only at the end of each pass

 */

import Foundation

example(of: "selection sort") {
    var array = [9,3,12,4,5]
    print(array)
    selectionSort(&array)
    print(array)
}

//: [Next](@next)
