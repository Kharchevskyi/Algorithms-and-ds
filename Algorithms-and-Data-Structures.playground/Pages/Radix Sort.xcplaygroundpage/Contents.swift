/*:
[< Previous](@previous)           [Home](Introduction)           [Next >](@next)

# Radix Sort O(k*n)
where k is the largest number of digits
 non-comparative algorithm for sort integers

 */

import Foundation

example(of: "radix sort") {
    var array = [23, 445, 12333, 21, 1]
    print(array)
    array.radixSort()
    print(array)
}

extension Array where Element == Int {
    mutating func radixSort() {
        let base = 10

        var done = false
        var digigts = 2

        while !done {
            done = true
            var buckets: [[Int]] = .init(repeating: [], count: 10)

            forEach { number in
                let remaining = number / digigts
                let digit = remaining % base
                buckets[digit].append(number)
                if remaining > 0 {
                    done = false
                }
            }

            digigts *= base

            self = buckets.flatMap { $0 }
        }
    }
}
//: [Next](@next)
