import UIKit

// Everybody has probably heard of the animal heads and legs problem from the earlier years at school. It goes:

// "A farm contains chickens and cows. There are x heads and y legs. How many chickens and cows are there?"

// Where x <= 1000 and y <=1000

// Task

// Assuming there are no other types of animals, work out how many of each animal are there.

// Return an Int array [Chickens, Cows]

// If either the heads & legs is negative, the result of your calculation is negative or the calculation is a float return nil

// In the form:

// [Heads, Legs] = [72, 200]

// VALID : [72, 200] =>             [44 , 28]
//                              [Chickens, Cows]

// INVALID : [72, 201] => "No solutions"
// However, if 0 heads and 0 legs are given always return [0, 0] since zero heads must give zero animals.

// There are many different ways to solve this, but they all give the same answer.

func howMuch(heads: Int, legs: Int) -> [Int]? {
    if heads == 0 && legs == 0 {
        return [0, 0]
    }
    
    let cows = (legs - (2 * heads)) / 2
    let chickens = heads - cows
    
    guard cows >= 0, chickens >= 0 else {
        return nil
    }
    
    if (cows * 4 + chickens * 2) == legs {
        return [chickens, cows]
    } else {
        return nil
    }
}

let option1 = howMuch(heads: 72, legs: 200)
let option2 = howMuch(heads: 72, legs: 201)
print(option1)
print(option2)
