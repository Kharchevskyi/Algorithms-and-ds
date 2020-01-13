/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 
# Queue
 FIFO Data structure.
 Linear structure which follows a particular order in which the operations are performed.
 The difference between stacks and queues is in removing.
 In a stack we remove the item the most recently added.
 The first element that was added will always be the first to be removed.

 ## Interface
 * Enqueue `O(1)`
 * Dequeue `O(n)`

 Excerpt From: By Matthijs Hollemans. “Data Structures & Algorithms in Swift”. Apple Books.
 ## Links
 * [Wikipedia](https://en.wikipedia.org/wiki/Queue_(abstract_data_type))
 * [Studytonight](https://www.studytonight.com/data-structures/queue-data-structure)
 * [Geeksforgeeks](https://www.geeksforgeeks.org/queue-data-structure/)
 */

import Foundation

example(of: "Enque") {
    var queue = QueueArray<Int>()
    queue.enqueue(1)
    queue.enqueue(2)
    queue.enqueue(3)
    print(queue)
    
    queue.dequeue()
    print("deque \(queue)")
    queue.dequeue()
    queue.dequeue()
    queue.dequeue()
}

//: [Next](@next)
