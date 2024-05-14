import UIKit

// m is excluded from the multiples
// n == min, m == max

func sumOfMultiples(_ n: Int, _ m: Int) -> Int? {
    guard n <= m, n > 0, m > 0 else { return nil }
    
    var sum = 0
    for num in n..<m {
        if num.isMultiple(of: n) {
            sum += num
        }
    }
    return sum
}

sumOfMultiples(1, 10) // 1-9 added = 45
sumOfMultiples(2, 10) // 2, 4, 6, 8 added = 20
sumOfMultiples(1, -10) // returns nil
