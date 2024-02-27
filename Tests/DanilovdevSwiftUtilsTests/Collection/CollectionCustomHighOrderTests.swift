//
//  CollectionExtensionTests.swift
//
//
//  Created by Aleksei Danilov on 28.02.2024.
//

import Foundation

import XCTest
@testable import DanilovdevSwiftUtils

final class CollectionCustomHighOrderTestss: XCTestCase {
    
    func testCustomMap() {
        // given
        let array = [1, 2, 3, 4, 5]
        
        // when
        let result = array.customMap { "\($0)" }
        
        // then
        XCTAssertEqual(result, ["1", "2", "3", "4", "5"])
    }
    
    func testCustomFilter() {
        // given
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 17, 44]
        
        // when
        let odd = array.customFilter { $0 % 2 != 0 }
        let even = array.customFilter { $0 % 2 == 0 }
        
        // then
        XCTAssertEqual(odd, [1, 3, 5, 7, 9, 17])
        XCTAssertEqual(even, [2, 4, 6, 8, 10, 44])
    }
    
    func testCustomReduce_whenSumInt() {
        // given
        let array = [1, 2, 3, 4, 5]
        
        // when
        let result = array.customReduce(0, +)
        
        // then
        XCTAssertEqual(result, 15)
    }
    
    func testCustomReduce_whenSumString() {
        // given
        let array = ["hello", " ", "happy", " ", "world", "!"]
        
        // when
        let result = array.customReduce("", +)
        
        // then
        XCTAssertEqual(result, "hello happy world!")
    }
    
    func testCustomCompactMap() {
        // given
        let array = ["1", "nil", "happy", "2", "world", "!", "54"]
        
        // when
        let result = array.customCompactMap { Int($0) }
        
        // then
        XCTAssertEqual(result, [1, 2, 54])
    }
    
    func testCustomFlatMap() {
        // given
        let array = [1, 2, 3, 4, 5, 6, 7]
        
        // when
        let result = array.flatMap { [$0, $0] }
        
        // then
        XCTAssertEqual(result, [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7])
    }
}
