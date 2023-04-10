//
//  IntExtensionsTests.swift
//  
//
//  Created by Aleksei Danilov on 05.02.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class IntExtensionsTests: XCTestCase {
    func testDigits() {
        XCTAssertEqual(123.digits, [1, 2, 3])
        XCTAssertEqual(1234.digits, [1, 2, 3, 4])
        XCTAssertEqual(9876.digits, [9, 8, 7, 6])
        XCTAssertEqual(101010.digits, [1, 0, 1, 0, 1, 0])
    }
    
    func testReversed() {
        XCTAssertEqual(123.reversed, 321)
        XCTAssertEqual(1234.reversed, 4321)
        XCTAssertEqual(9876.reversed, 6789)
        XCTAssertEqual(101010.reversed, 10101)
    }
    
    func testIsEven() {
        XCTAssertEqual(321.isEven, false)
        XCTAssertEqual(4327.isEven, false)
        XCTAssertEqual(6786.isEven, true)
        XCTAssertEqual(3458.isEven, true)
    }
    
    func testIsOdd() {
        XCTAssertEqual(321.isOdd, true)
        XCTAssertEqual(4321.isOdd, true)
        XCTAssertEqual(4990.isOdd, false)
        XCTAssertEqual(8652.isOdd, false)
    }
    
    func testIsPowerOf2() {
        XCTAssertEqual(2.isPowerOf2, true)
        XCTAssertEqual(4.isPowerOf2, true)
        XCTAssertEqual(128.isPowerOf2, true)
        XCTAssertEqual(40.isPowerOf2, false)
        XCTAssertEqual(625.isPowerOf2, false)
    }
    
    func testIsPowerOfValue() {
        XCTAssertEqual(2.isPowerOf(2), true)
        XCTAssertEqual(4.isPowerOf(2), true)
        XCTAssertEqual(128.isPowerOf(2), true)
        XCTAssertEqual(40.isPowerOf(3), false)
        XCTAssertEqual(625.isPowerOf(5), true)
        XCTAssertEqual(81.isPowerOf(3), true)
        XCTAssertEqual(144.isPowerOf(12), true)
    }
    
    func testIsSqr() {
        XCTAssertEqual(25.isSqr, true)
        XCTAssertEqual(4.isSqr, true)
        XCTAssertEqual(625.isSqr, true)
        XCTAssertEqual(144.isSqr, true)
        XCTAssertEqual(85.isSqr, false)
        XCTAssertEqual(40.isSqr, false)
        XCTAssertEqual(128.isSqr, false)
    }
    
    func testBinaryString() {
        XCTAssertEqual(0.binaryString, "0")
        XCTAssertEqual(1.binaryString, "1")
        XCTAssertEqual(4.binaryString, "100")
        XCTAssertEqual(7.binaryString, "111")
        XCTAssertEqual(8.binaryString, "1000")
        XCTAssertEqual(13.binaryString, "1101")
        XCTAssertEqual(14.binaryString, "1110")
    }

    func testBinaryCharArray() {
        XCTAssertEqual(0.binaryCharArray, ["0"])
        XCTAssertEqual(1.binaryCharArray, ["1"])
        XCTAssertEqual(4.binaryCharArray, ["1", "0", "0"])
        XCTAssertEqual(7.binaryCharArray, ["1", "1","1"])
        XCTAssertEqual(8.binaryCharArray, ["1", "0", "0", "0"])
        XCTAssertEqual(13.binaryCharArray, ["1", "1", "0", "1"])
        XCTAssertEqual(14.binaryCharArray, ["1", "1", "1", "0"])
    }

    func testBinaryArray() {
        XCTAssertEqual(0.binaryArray, [0])
        XCTAssertEqual(1.binaryArray, [1])
        XCTAssertEqual(4.binaryArray, [1, 0, 0])
        XCTAssertEqual(7.binaryArray, [1, 1, 1])
        XCTAssertEqual(8.binaryArray, [1, 0, 0, 0])
        XCTAssertEqual(13.binaryArray, [1, 1, 0, 1])
        XCTAssertEqual(14.binaryArray, [1, 1, 1, 0])
    }
    
    func testIsPalindrome() {
        XCTAssertEqual(5.isPalindrome, true)
        XCTAssertEqual(435534.isPalindrome, true)
        XCTAssertEqual(121.isPalindrome, true)
        XCTAssertEqual(444.isPalindrome, true)
        XCTAssertEqual(85.isPalindrome, false)
        XCTAssertEqual(40.isPalindrome, false)
        XCTAssertEqual(128.isPalindrome, false)
    }
    
    func testNumberOf1Bits() {
        XCTAssertEqual(0.numberOf1Bits, 0)
        XCTAssertEqual(1.numberOf1Bits, 1)
        XCTAssertEqual(4.numberOf1Bits, 1)
        XCTAssertEqual(7.numberOf1Bits, 3)
        XCTAssertEqual(8.numberOf1Bits, 1)
        XCTAssertEqual(13.numberOf1Bits, 3)
        XCTAssertEqual(14.numberOf1Bits, 3)
    }
    
    func testAllDivisors() {
        XCTAssertEqual(1.allDivisors, [1])
        XCTAssertEqual(4.allDivisors, [1, 2, 4])
        XCTAssertEqual(7.allDivisors, [1, 7])
        XCTAssertEqual(13.allDivisors, [1, 13])
        XCTAssertEqual(14.allDivisors, [1, 2, 7, 14])
        XCTAssertEqual(144.allDivisors, [1, 2, 3, 4, 6, 8, 9, 12, 16, 18, 24, 36, 48, 72, 144])
        XCTAssertEqual(625.allDivisors, [1, 5, 25, 125, 625])
        XCTAssertEqual(67843.allDivisors, [1, 67843])
        XCTAssertEqual(67844.allDivisors, [1, 2, 4, 7, 14, 28, 2423, 4846, 9692, 16961, 33922, 67844])
    }
}
