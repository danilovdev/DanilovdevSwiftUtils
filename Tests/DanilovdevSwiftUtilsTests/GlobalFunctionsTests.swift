//
//  GlobalFunctionsTests.swift
//  
//
//  Created by Aleksei Danilov on 08.02.2023.
//

import Foundation
@testable import DanilovdevSwiftUtils
import XCTest

final class GlobalFunctionsTests: XCTest {
    func testMakeFlat() {
        XCTAssertEqual(makeFlat([1, 2, [3, 4], [5, [6, 7]]]), [1, 2, 3, 4, 5, 6, 7])
        XCTAssertEqual(makeFlat(["aaa", "bbb", ["c", "d"], ["e", ["f", "g"]]]), ["aaa", "bbb", "c", "d", "e", "f", "g"])
    }
}
