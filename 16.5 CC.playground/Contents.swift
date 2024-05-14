import UIKit

// Your task is to sum the differences between consecutive pairs in the array in descending order.

// Example
// [2, 1, 10]  -->  9
// In descending order: [10, 2, 1]

// Sum: (10 - 2) + (2 - 1) = 8 + 1 = 9

// If the array is empty or the array has only one element the result should be 0

func sumOfDiff(_ array: [Int]) -> Int {
    guard array.count > 1 else { return 0 }
    let sortedArray = array.sorted(by: >)
    var result = 0
    
    for i in 1..<sortedArray.count {
        result += sortedArray[i - 1] - sortedArray[i]
    }
    return result
}

sumOfDiff([2, 1, 10])
