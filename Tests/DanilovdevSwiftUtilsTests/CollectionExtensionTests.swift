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
}
