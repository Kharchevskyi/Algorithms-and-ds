import Foundation

public func bubbleSort<Element>(_ collection: inout [Element]) where Element: Comparable {
    guard collection.count >= 2 else { return }

    var isSwapped = true
    while isSwapped {
        isSwapped = false
        for index in 1..<collection.count {
            if collection[index] < collection[index-1] {
                collection.swapAt(index - 1, index)
                isSwapped = true
            }
        }
    }
}
