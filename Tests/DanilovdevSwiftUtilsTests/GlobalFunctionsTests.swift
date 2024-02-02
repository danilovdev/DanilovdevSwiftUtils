//
//  GlobalFunctionsTests.swift
//  
//
//  Created by Aleksei Danilov on 08.02.2023.
//

import Foundation
@testable import DanilovdevSwiftUtils
import XCTest

final class GlobalFunctionsTests: XCTestCase {
    func testMakeFlat() {
        XCTAssertEqual(makeFlat([1, 2, [3, 4], [5, [6, 7]]]), [1, 2, 3, 4, 5, 6, 7])
        XCTAssertEqual(makeFlat(["aaa", "bbb", ["c", "d"], ["e", ["f", "g"]]]), ["aaa", "bbb", "c", "d", "e", "f", "g"])
    }
    
    func testGetEdges() {
        let root = Mocks.mockBinaryTree
        let expected = [
            [1, 2],
            [1, 3],
            [2, 4],
            [2, 5],
            [3, 6],
            [6, 7],
            [6, 8]
        ]
        XCTAssertEqual(expected, getEdges(root))
    }
    
    func testGetAdjacencyListFromEdges() {
        let edges = [
            [1, 2],
            [1, 3],
            [2, 4],
            [2, 5],
            [3, 6],
            [6, 7],
            [6, 8]
        ]
        let expected = [
            2: [1, 4, 5],
            6: [3, 7, 8],
            7: [6],
            3: [1, 6],
            8: [6],
            4: [2],
            5: [2],
            1: [2, 3]
        ]
        XCTAssertEqual(expected, getAdjacencyList(edges))
    }
    
    func testGetAdjacencyListFromBinaryTree() {
        let root = Mocks.mockBinaryTree
        let expected = [
            2: [1, 4, 5],
            6: [3, 7, 8],
            7: [6],
            3: [1, 6],
            8: [6],
            4: [2],
            5: [2],
            1: [2, 3]
        ]
        XCTAssertEqual(expected, getAdjacencyList(root))
    }
}
