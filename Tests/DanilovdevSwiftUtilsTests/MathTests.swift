//
//  MathTests.swift
//  
//
//  Created by Aleksei Danilov on 29.01.2023.
//

import Foundation
import XCTest
@testable import DanilovdevSwiftUtils

final class MathTests: XCTestCase {
    func testPow() throws {
        XCTAssertEqual(Math.pow(2, 0), 1)
        XCTAssertEqual(Math.pow(2, 1), 2)
        XCTAssertEqual(Math.pow(2, 4), 16)
        XCTAssertEqual(Math.pow(2, 5), 32)
        XCTAssertEqual(Math.pow(2, 10), 1024)
    }
}

