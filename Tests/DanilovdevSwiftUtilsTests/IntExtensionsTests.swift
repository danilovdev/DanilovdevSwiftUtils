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
    
}
