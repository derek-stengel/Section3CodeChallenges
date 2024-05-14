import UIKit

// You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
// If it is a square, return its area. If it is a rectangle, return its perimeter.

func squareOrRectangle(length: Int, width: Int) -> Int {
    if length == width {
        return length * length
    } else {
        return 2 * (length + width)
    }
}

squareOrRectangle(length: 4, width: 4) // square: 4 * 4 = 16
squareOrRectangle(length: 4, width: 8) // rect: 2 * (4 + 8) = 24
