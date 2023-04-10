//
//  ArrayExtensionsTests.swift
//  
//
//  Created by Aleksei Danilov on 10.04.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class ArrayExtensionsTests: XCTestCase {
    
    func testIsAscending() {
        XCTAssertTrue([1, 2, 3, 4].isAscending)
        XCTAssertTrue([1, 2, 3, 4, 5].isAscending)
        XCTAssertTrue([-10, -5, 0, 10, 99, 2123].isAscending)
        
        XCTAssertFalse([1, 2, 3, 4, 4].isAscending)
        XCTAssertFalse([1, 2, 3, 4, 3, 2, 1].isAscending)
        XCTAssertFalse([4, 3, 2, 1].isAscending)
    }
    
    func testIsDescending() {
        XCTAssertTrue([4, 3, 2, 1].isDescending)
        XCTAssertTrue([40, 30, 20, 10, 0, -10].isDescending)
        XCTAssertTrue([11, 10, 9, 8, -99].isDescending)
        
        XCTAssertFalse([1, 2, 3, 4, 4].isDescending)
        XCTAssertFalse([1, 2, 3, 4, 3, 2, 1].isDescending)
        XCTAssertFalse([4, 3, 2, 1, 2, 3, 4].isDescending)
    }
    
    func testIsMonotonic() {
        XCTAssertTrue([4, 3, 2, 1].isMonotonic)
        XCTAssertTrue([40, 30, 20, 10, 0, -10].isMonotonic)
        XCTAssertTrue([11, 10, 9, 8, -99].isMonotonic)
        XCTAssertTrue([4, 3, 2, 1].isMonotonic)
        XCTAssertTrue([40, 30, 20, 10, 0, -10].isMonotonic)
        XCTAssertTrue([11, 10, 9, 8, -99].isMonotonic)
        
        XCTAssertFalse([1, 2, 3, 4, 4].isMonotonic)
        XCTAssertFalse([1, 2, 3, 4, 3, 2, 1].isMonotonic)
        XCTAssertFalse([4, 3, 2, 1, 2, 3, 4].isMonotonic)
        XCTAssertFalse([1, 2, 3, 4, 4].isMonotonic)
        XCTAssertFalse([1, 2, 3, 4, 3, 2, 1].isMonotonic)
    }
    
    func testIsSorted() {
        XCTAssertTrue([4, 4, 3, 2, 1].isSorted)
        XCTAssertTrue([40, 30, 30, 20, 10, 0, -10].isSorted)
        XCTAssertTrue([11, 10, 9, 8, -99].isSorted)
        XCTAssertTrue([1, 2, 3, 4, 4].isSorted)
        
        XCTAssertFalse([1, 2, 3, 4, 3, 2, 1].isSorted)
        XCTAssertFalse([4, 3, 2, 1, 2, 3, 4].isSorted)
    }
}
