//: [Previous](@previous)

import Foundation

extension Int {
    func factorial() -> Int {
        if self == 0 { return 1 }

        return self * (self - 1).factorial()
    }
}


let value = 5
let factorial = 5.factorial()
factorial

//: [Next](@next)
