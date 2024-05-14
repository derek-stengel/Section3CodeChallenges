import UIKit

// Write a function that returns a string in which the first name is swapped with last name
// Example: (Input -> Output)
// "John McClane" -> "McClane John"


func lastFirst(_ fullName: String) -> String {
    fullName.components(separatedBy: " ").reversed().joined(separator: " ")
}

lastFirst("Derek Stengel")
