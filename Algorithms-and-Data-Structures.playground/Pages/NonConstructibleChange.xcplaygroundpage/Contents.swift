/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 # Non-constructible change
 ### Time = O(nlog(n)) | Space = O(1)

 Given array of positive integers, which is the value of coins
 write a function which returns the min amount of change that you can't create

 in case there are no coins = min is 1

 example:
 coins = [1,2,5]
 minimum is 4

*/

import Foundation

func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    coins.sort()

    var currentMinChange = 0
    for coin in coins {
        if coin > currentMinChange + 1 {
            return currentMinChange + 1
        }
        currentMinChange += coin
    }

    return currentMinChange + 1
}

var coins = [5, 7, 1, 1, 2, 3, 22]
var coins2 = [1,2,5]
print(nonConstructibleChange(&coins))
print(nonConstructibleChange(&coins2))

