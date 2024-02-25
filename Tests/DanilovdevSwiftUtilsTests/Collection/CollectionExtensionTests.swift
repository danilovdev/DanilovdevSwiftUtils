import XCTest
@testable import DanilovdevSwiftUtils

final class CollectionExtensionTests: XCTestCase {
    func testIsNotEmpty() throws {
        XCTAssertTrue([1, 2, 3].isNotEmpty)
    }
    
    func testCounter() {
        XCTAssertEqual([1, 2, 3].counter(), [1: 1, 2: 1, 3: 1])
        XCTAssertEqual([1, 2, 2, 2, 3].counter(), [1: 1, 2: 3, 3: 1])
        XCTAssertEqual([1, 1, 1, 2, 2, 2, 3, 3, 3].counter(), [1: 3, 2: 3, 3: 3])
        XCTAssertEqual(["a", "a", "a", "b", "b", "c"].counter(), ["a": 3, "b": 2, "c": 1])
    }
    
    func testMostFrequent() {
        XCTAssertEqual([1, 2, 3].mostFrequent, 1)
        XCTAssertEqual([1, 1, 2, 3].mostFrequent, 1)
        XCTAssertEqual([1, 1, 2, 2, 3].mostFrequent, 1)
        XCTAssertEqual([1, 1, 2, 2, 3, 3, 3, 3].mostFrequent, 3)
        XCTAssertEqual([122, 13, 21, 21, 322].mostFrequent, 21)
        XCTAssertEqual([11, 12, 13, 14, 11].mostFrequent, 11)
        XCTAssertEqual([199, 45, 45, 45, 33].mostFrequent, 45)
    }
    
    func testLeastFrequent() {
        XCTAssertEqual([1, 2, 3].leastFrequent, 1)
        XCTAssertEqual([1, 1, 2, 3].leastFrequent, 2)
        XCTAssertEqual([1, 1, 2, 2, 3].leastFrequent, 3)
        XCTAssertEqual([1, 1, 2, 2, 3, 3, 3, 3].leastFrequent, 1)
        XCTAssertEqual([122, 13, 21, 21, 322].leastFrequent, 13)
        XCTAssertEqual([11, 12, 12, 13, 11].leastFrequent, 13)
        XCTAssertEqual([199, 199, 45, 45, 33, 33, 33, 45].leastFrequent, 199)
    }
    
    func testIsUnique() {
        XCTAssertTrue([1, 2, 3].isUnique)
        XCTAssertTrue([1, 2, 3, 4].isUnique)
        XCTAssertTrue([1, 2, 3, 4, 55, 99].isUnique)
        XCTAssertTrue([11, 12, 23, 24, 31, 32, 33, 341].isUnique)
        
        XCTAssertFalse([122, 13, 21, 21, 322].isUnique)
        XCTAssertFalse([11, 12, 12, 13, 11].isUnique)
        XCTAssertFalse([199, 199, 45, 45, 33, 33, 33, 45].isUnique)
        XCTAssertFalse([199, 199, 45, 45, 33, 33, 33, 45].isUnique)
    }
}
