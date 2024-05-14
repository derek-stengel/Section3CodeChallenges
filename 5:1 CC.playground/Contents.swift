import UIKit

// Given 2 strings, a and b, return a string of the form short+long+short, with the shorter string on the outside and the longer string on the inside. The strings will not be the same length, but they may be empty ( zero length ).

// For example: (Input1, Input2) --> output

// ("1", "22") --> "1221"
// ("22", "1") --> "1221"

func shortLongShort(a: String, b: String) -> String {
    guard !a.isEmpty else { return b + b }
    guard !b.isEmpty else { return a + a }
    
    if a.count > b.count {
        return b + a + b
    } else {
        return a + b + a
    }
}

shortLongShort(a: "1", b: "22")
shortLongShort(a: "22", b: "1")

//return input1 > input2 ? (input2 + input1 + input2) : (input1 + input2 + input1)
