import UIKit

// Write a function that takes an array of numbers, returns a [Character: [Int]] dictionary.
// For each number in the input array, check if it is an ASCII values for a LOWERCASE vowel (a, e, i, o, u).
// If it is, add the index of that value to an array in a dictionary where vowels are the keys.
//
// Return the resulting dictionary which can now be used to get the locations of all the vowels in the input array.
//
// Hint: https://www.asciitable.com/
// https://stackoverflow.com/questions/24354549/how-to-get-string-from-ascii-code-in-swift

// a = 97, e = 101, i = 105, o = 111, u = 117

func ascii(arr: [Int]) -> [Character: [Int]] {
    var result: [Character: [Int]] = [:]
    
    for (index, value) in arr.enumerated() {
        switch value {
        case 97:
            result["a", default: []].append(index)
        case 101:
            result["e", default: []].append(index)
        case 105:
            result["i", default: []].append(index)
        case 111:
            result["o", default: []].append(index)
        case 117:
            result["u", default: []].append(index)
        default:
            break
        }
    }
    return result
}

print(ascii(arr: [118, 97, 101, 105, 111, 117]))
print(ascii(arr: [65]))
