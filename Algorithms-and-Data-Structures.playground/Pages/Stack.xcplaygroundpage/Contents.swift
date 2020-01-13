/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 # Stack
 
 LIFO Data structure where elements which pushed in last are the first one to be popped.
 Possible examples of Stack in iOS are `UINavigationController`, `Memmory allocation`.
 
 ## Interface
 * push `O(1)`
 * pop `O(1)`
 
 ## Complexity
 
 
 */
import Foundation

example(of: "Stack") {
    var stack: Stack<Int> = Stack<Int>()
    stack.push(1)
    stack.push(2)
    stack.push(3)
    
    print(stack)
}

example(of: "Stack with some storage") {
    var stack = Stack<Int>(storage: [1,2,3])
    stack.push(4)
    
    print(stack)
    
    print("---Stack pop---")
    stack.pop()
    print(stack)
}

example(of: "initializing a stack from an array literal") {
    let stack: Stack = [1.0, 2.0, 3.0, 4.0]
    
    print(stack)
}

//: [Next](@next)
