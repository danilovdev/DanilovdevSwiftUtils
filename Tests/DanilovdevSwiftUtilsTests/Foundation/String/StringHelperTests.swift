//
//  StringHelperTests.swift
//
//
//  Created by Aleksei Danilov on 25.02.2024.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class StringHelperTests: XCTestCase {
    
    func testRemoveDuplicatesNSOrderedSet() {
        // when
        let result = StringHelper.removeDuplicatesNSOrderedSet("How to remove duplicate characters from a string in Swift?")
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesFilterUpdateValue() {
        // when
        let result = StringHelper.removeDuplicatesFilterUpdateValue("How to remove duplicate characters from a string in Swift?")
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesArrayContains() {
        // when
        let result = StringHelper.removeDuplicatesArrayContains("How to remove duplicate characters from a string in Swift?")
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesSetInserted() {
        // when
        let result = StringHelper.removeDuplicatesSetInserted("How to remove duplicate characters from a string in Swift?")
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesSetContains() {
        // when
        let result = StringHelper.removeDuplicatesSetContains("How to remove duplicate characters from a string in Swift?")
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
}
