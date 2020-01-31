/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Insertion Sort O(n2)

 Same as Bubble sort but swap only at the end of each pass
 best time complexity is O(n) if data sorted

 */

import Foundation

example(of: "insertion sort") {
    var array = [9,3,12,4,5]
    print(array)
    insertionSort(&array)
    print(array)
}


//: [Next](@next)
