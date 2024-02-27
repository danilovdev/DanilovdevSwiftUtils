//
//  CollectionExtensionTests.swift
//  
//
//  Created by Aleksei Danilov on 25.02.2024.
//

import Foundation

import XCTest
@testable import DanilovdevSwiftUtils

final class CollectionAverageTests: XCTestCase {
    func testMedian() {
        XCTAssertEqual([].median, nil)
        XCTAssertEqual([1].median, 1)
        XCTAssertEqual([1, 2, 3].median, 2)
        XCTAssertEqual([1, 2, 3, 4].median, 2.5)
        XCTAssertEqual([7, 2, 3, 56, 11].median, 7)
        XCTAssertEqual([44, 55, 22, 33].median, 38.5)
    }
    
    func testAverage() {
        XCTAssertEqual([].average, nil)
        XCTAssertEqual([1].average, 1)
        XCTAssertEqual([1, 2, 3].average, 2)
        XCTAssertEqual([1, 2, 3, 4].average, 2.5)
        XCTAssertEqual([99, 1, 101, 199].average, 100)
        XCTAssertEqual([-1, -2, -3, -4].average, -2.5)
        XCTAssertEqual([5, 890, 100, 45, 389].average, 285.8)
    }
}
