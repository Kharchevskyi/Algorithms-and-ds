//: [Previous](@previous)

import Foundation


func findTheMostFrequentElement(in array: [Int]) -> (Int?, Int) {
    var storage = [Int: Int]()

    var mostFrequent: (Int?, Int) = (array.first, 0)

    for element in array {
        if let frequencyForElement = storage[element] {
            let newFrequency = frequencyForElement + 1
            storage[element] = newFrequency

            if newFrequency > mostFrequent.1 {
                mostFrequent = (element, newFrequency)
            }
        } else {
            storage[element] = 1
        }
    }

    return mostFrequent
}

print(findTheMostFrequentElement(in: [1, 2, 1, 1, 1, 1, 3, 2, 2, 2, 2, 2, 2]))

//: [Next](@next)
