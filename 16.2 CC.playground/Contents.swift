import UIKit

func binaryToDecimal(_ binaryNumber: String) -> Int? {
    Int(binaryNumber, radix: 2) ?? nil
}

binaryToDecimal("0")
binaryToDecimal("1")
binaryToDecimal("10")
binaryToDecimal("11")
binaryToDecimal("100")
binaryToDecimal("101")
binaryToDecimal("110")
binaryToDecimal("111")
binaryToDecimal("1000")
binaryToDecimal("1001")
binaryToDecimal("1010")

binaryToDecimal("Hello")
