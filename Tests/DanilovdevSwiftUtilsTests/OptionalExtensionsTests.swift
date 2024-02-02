//
//  OptionalExtensionsTests.swift
//
//
//  Created by Aleksei Danilov on 02.02.2024.
//

import Foundation
import XCTest
@testable import DanilovdevSwiftUtils

final class OptionalExtensionsTests: XCTestCase {
    func testOrDefault() {
        XCTAssertEqual(Optional.some(222).orDefault(value: 333), 222)
        XCTAssertEqual(Optional.none.orDefault(value: 333), 333)
        XCTAssertEqual(Optional.some("ABC").orDefault(value: "Swift"), "ABC")
        XCTAssertEqual(Optional.none.orDefault(value: "Swift"), "Swift")
    }
}
