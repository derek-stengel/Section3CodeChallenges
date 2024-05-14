import UIKit

// Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

// Examples (Input -> Output):
// * "String"      -> "SSttrriinngg"
// * "Hello World" -> "HHeelllloo  WWoorrlldd"
// * "1234!_ "     -> "11223344!!__  "
// Good Luck!

func repeatEverything1(_ string: String) -> String {
    string.map { String($0) + String($0) }.joined()
}

repeatEverything1("Derek")

