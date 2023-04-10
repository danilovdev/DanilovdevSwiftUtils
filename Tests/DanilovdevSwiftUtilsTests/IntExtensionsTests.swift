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
}
