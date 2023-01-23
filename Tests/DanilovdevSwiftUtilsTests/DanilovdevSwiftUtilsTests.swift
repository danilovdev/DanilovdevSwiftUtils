import XCTest
@testable import DanilovdevSwiftUtils

final class CollectionExtensionTests: XCTestCase {
    func testIsNotEmpty() throws {
        XCTAssertTrue([1, 2, 3].isNotEmpty)
    }
}
