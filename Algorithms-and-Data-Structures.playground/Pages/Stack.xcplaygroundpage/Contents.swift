/*: [Previous](@previous)
 # Stack
 
 LIFO Data structure where elements which pushed in last are the first one to be popped.
 
 Possible examples of Stack in iOS are `UINavigationController`, `Memmory allocation`
 ## Interface
 * push
 * pop
 
 ## Complexity
 
 
 */
import Foundation

example(of: "Stack") {
    var stack: Stack<Int> = Stack<Int>()
    stack.push(1)
    
    print(stack)
}

//: [Next](@next)
