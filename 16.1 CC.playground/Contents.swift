import UIKit

// Is the string uppercase?
// Task
// Create a method to see whether the string is ALL CAPS.

// Examples (input -> output)
// "c" -> False
// "C" -> True
// "hello I AM DONALD" -> False
// "HELLO I AM DONALD" -> True
// "ACSKLDFJSgSKLDFJSKLDFJ" -> False
// "ACSKLDFJSGSKLDFJSKLDFJ" -> True
// A string is said to be in ALL CAPS whenever it does not contain any lowercase letter so any string containing no letters at all is trivially considered to be in ALL CAPS.

extension String {
    func allCaps() -> Bool {
        let stringsWithoutSpaces = self.replacingOccurrences(of: " ", with: "")
        return stringsWithoutSpaces.allSatisfy { $0.isUppercase }
    }
}

print("c".allCaps()) // false
print("C".allCaps()) // true
print("hello I AM DONALD".allCaps()) // false
print("HELLO I AM DONALD".allCaps()) // true
print("ACSKLDFJSgSKLDFJSKLDFJ".allCaps()) // false
print("ACSKLDFJSGSKLDFJSKLDFJ".allCaps()) // true
