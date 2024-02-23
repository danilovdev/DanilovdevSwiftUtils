//
//  CopyingTests.swift
//
//
//  Created by Aleksei Danilov on 22.02.2024.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class CopyingTests: XCTestCase {
    
    func testCopyRefType() {
        let value = CarReferenceType(name: "Toyota", color: "Red")
        let copied = value.copy()
        
        XCTAssertFalse(value === copied)
        XCTAssertEqual(value, copied)
        XCTAssertEqual(value.name, copied.name)
        XCTAssertEqual(value.color, copied.color)
    }
    
    func testCopyValueType() {
        let value = CarValueType(name: "Toyota", color: "Red")
        let copied = value.copy()
        
        var originalMemory: UnsafePointer<CarValueType>?
        var copiedMemory: UnsafePointer<CarValueType>?
        
        withUnsafePointer(to: value, { memory in
            originalMemory = memory
        })
        
        withUnsafePointer(to: value, { memory in
            copiedMemory = memory
        })
        
        XCTAssertNotEqual(originalMemory, copiedMemory)
        
        XCTAssertTrue(value == copied)
        XCTAssertEqual(value, copied)
        XCTAssertEqual(value.name, copied.name)
        XCTAssertEqual(value.color, copied.color)
    }
    
    func testCopyArray() {
        let array = [
            CarValueType(name: "BMW", color: "White"),
            CarValueType(name: "Audi", color: "Black"),
            CarValueType(name: "Toyota", color: "Red")
        ]
        
        let copyArray = array
        let cloneArray = array.clone()
        
        XCTAssertNotEqual(unsafeBitCast(array, to: Int.self), unsafeBitCast(cloneArray, to: Int.self))
        XCTAssertEqual(unsafeBitCast(array, to: Int.self), unsafeBitCast(copyArray, to: Int.self))
        XCTAssertEqual(array.count, copyArray.count)
    }
}

private struct CarValueType {
    var name: String
    var color: String
}

extension CarValueType: Copying {
    init(original: CarValueType) {
        self.name = original.name
        self.color = original.color
    }
}

extension CarValueType: Equatable {}

private class CarReferenceType: Copying {
    let name: String
    let color: String
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    required init(original: CarReferenceType) {
        self.name = original.name
        self.color = original.color
    }
}

extension CarReferenceType: Equatable {
    static func == (lhs: CarReferenceType, rhs: CarReferenceType) -> Bool {
        lhs.name == rhs.name && lhs.color == rhs.color
    }
}
