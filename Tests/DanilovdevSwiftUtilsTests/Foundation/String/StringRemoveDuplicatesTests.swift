//
//  StringRemoveDuplicatesTests.swift
//  
//
//  Created by Aleksei Danilov on 25.02.2024.
//

import Foundation

import XCTest
@testable import DanilovdevSwiftUtils

final class StringRemoveDuplicatesTests: XCTestCase {
    
    func testRemoveDuplicatesArrayContains() {
        // given
        let input = "How to remove duplicate characters from a string in Swift?"
        
        // when
        let result = input.removeDuplicates(removeType: .arrayContains)
        
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesNsOrderedSet() {
        // given
        let input = "How to remove duplicate characters from a string in Swift?"
        
        // when
        let result = input.removeDuplicates(removeType: .nsOrderedSet)
        
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesFilterUpdateValue() {
        // given
        let input = "How to remove duplicate characters from a string in Swift?"
        
        // when
        let result = input.removeDuplicates(removeType: .filterUpdateValue)
        
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesSetInserted() {
        // given
        let input = "How to remove duplicate characters from a string in Swift?"
        
        // when
        let result = input.removeDuplicates(removeType: .setInserted)
        
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
    
    func testRemoveDuplicatesSetContains() {
        // given
        let input = "How to remove duplicate characters from a string in Swift?"
        
        // when
        let result = input.removeDuplicates(removeType: .setContains)
        
        // then
        XCTAssertEqual(result, "How tremvduplicahsfngS?")
    }
}
