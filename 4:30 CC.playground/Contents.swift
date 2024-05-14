import UIKit

// Write an extension on Character that will check if two given characters are the same case.

// If either of the characters is not a letter, return -1
// If both characters are the same case, return 1
// If both characters are letters, but not the same case, return 0
// Examples

// 'a' and 'g' returns 1

// 'A' and 'C' returns 1

// 'b' and 'G' returns 0

// 'B' and 'g' returns 0

// '0' and '?' returns -1

extension Character {
    func sameFormat(letter1: Character, letter2: Character) -> Int {
        guard letter1.isLetter && letter2.isLetter else { return -1 }
        
        if letter1.uppercased() == letter2.uppercased() {
            return 1
        } else if letter1.lowercased() == letter2.lowercased() {
            return 1
        } else if letter1.lowercased() == letter2.uppercased() {
            return 0
        } else if letter1.uppercased() == letter2.lowercased() {
            return 0
        } else { return -1 }
        
    }
}

"a".first!.sameFormat(letter1: "a", letter2: "b")

