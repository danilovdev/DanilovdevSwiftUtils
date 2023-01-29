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
}
