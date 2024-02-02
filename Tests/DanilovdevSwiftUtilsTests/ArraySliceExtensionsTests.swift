//
//  ArraySliceExtensionsTests.swift
//
//
//  Created by Aleksei Danilov on 02.02.2024.
//

import Foundation

import XCTest
@testable import DanilovdevSwiftUtils

final class ArraySliceExtensionsTests: XCTestCase {
    
    func testToArray() {
        let array = [1, 2, 3, 4, 5]
        let slice = array[0..<4]
        XCTAssertEqual(slice.toArray, [1, 2, 3, 4])
    }
}
