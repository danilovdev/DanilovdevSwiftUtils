//
//  File.swift
//  
//
//  Created by Aleksei Danilov on 29.01.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class SequenceExtensionsTests: XCTestCase {
    func testUniqueValues() throws {
        XCTAssertEqual([1, 2, 3, 3, 8, 3, 5, 4, 5, 6, 8, 8].uniqueValues, [1, 2, 3, 8, 5, 4, 6])
    }
    
    func testSum() throws {
        XCTAssertEqual([1, 2, 3, 4, 5].sum, 15)
    }
    
    func testGroupBy() {
        XCTAssertEqual(
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].group(by: { $0 % 2 }),
            [0: [2, 4, 6, 8, 10], 1: [1, 3, 5, 7, 9]]
        )
        
        XCTAssertEqual(
            ["swift", "leetcode", "apple", "code", "life", "dream"].group(by: { $0.count % 2 == 0 }),
            [true: ["leetcode", "code", "life"], false: ["swift", "apple", "dream"]]
        )
        
        XCTAssertEqual(
            ["swift", "leetcode", "apple", "code", "life", "dream"].group(by: { $0.first }),
            [
                "s": ["swift"],
                "l": ["leetcode", "life"],
                "a": ["apple"],
                "c": ["code"],
                "d": ["dream"]
            ]
        )
    }
    
    func testCustomGroupBy() {
        XCTAssertEqual(
            [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].groupCustom(by: { $0 % 2 }),
            [0: [2, 4, 6, 8, 10], 1: [1, 3, 5, 7, 9]]
        )
        
        XCTAssertEqual(
            ["swift", "leetcode", "apple", "code", "life", "dream"].groupCustom(by: { $0.count % 2 == 0 }),
            [true: ["leetcode", "code", "life"], false: ["swift", "apple", "dream"]]
        )
        
        XCTAssertEqual(
            ["swift", "leetcode", "apple", "code", "life", "dream"].groupCustom(by: { $0.first }),
            [
                "s": ["swift"],
                "l": ["leetcode", "life"],
                "a": ["apple"],
                "c": ["code"],
                "d": ["dream"]
            ]
        )
    }
}
