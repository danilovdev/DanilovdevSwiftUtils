//
//  BinaryTreeTests.swift
//  
//
//  Created by Aleksei Danilov on 20.05.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class BinaryTreeTests: XCTestCase {
    func testFindNodesDistanceK() {
        XCTAssertEqual([2, 7, 8], Mocks.mockBinaryTree.findNodesDistanceK(target: 3, 2))
    }
}




