import UIKit

func stairsEstimate(stairs: [[Int]]) -> Int {
    var total = 0
    for weekday in stairs {
        for day in weekday {
            total += day
        }
    }
    return total * 20
}

stairsEstimate(stairs: [[2,4,6,8,10]])
