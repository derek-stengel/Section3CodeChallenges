import UIKit

func animalYears(humanYears: Int) -> [Int] {
    var catYears = 0
    var dogYears = 0
    
    if humanYears >= 1 {
        if humanYears == 1 {
            catYears = 15
            dogYears = 15
        } else if humanYears == 2 {
            catYears = 15 + 9
            dogYears = 15 + 9
        } else {
            catYears = 15 + 9 + (4 * (humanYears - 2))
            dogYears = 15 + 9 + (5 * (humanYears - 2))
        }
    }
    
    return [humanYears, catYears, dogYears]
}

let ages = animalYears(humanYears: 5)
print("Human years: \(ages[0]), Cat years: \(ages[1]), Dog years: \(ages[2])")

