//
//  ArrayExtensionsTests.swift
//  
//
//  Created by Aleksei Danilov on 10.04.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class NamePrintableTests: XCTestCase {
    
    func testTypeNameInstanceRef() {
        let instance = NamePrintableRefType()
        XCTAssertEqual(instance.typeName, "NamePrintableRefType")
        XCTAssertEqual(instance.typeName, String(describing: NamePrintableRefType.self))
    }
    
    func testTypeNameTypeRef() {
        XCTAssertEqual(NamePrintableRefType.typeName, "NamePrintableRefType")
        XCTAssertEqual(NamePrintableRefType.typeName, String(describing: NamePrintableRefType.self))
    }
    
    func testTypeNameInstanceValue() {
        let instance = NamePrintableValueType()
        XCTAssertEqual(instance.typeName, "NamePrintableValueType")
        XCTAssertEqual(instance.typeName, String(describing: NamePrintableValueType.self))
    }
    
    func testTypeNameTypeValue() {
        XCTAssertEqual(NamePrintableValueType.typeName, "NamePrintableValueType")
        XCTAssertEqual(NamePrintableValueType.typeName, String(describing: NamePrintableValueType.self))
    }
}

private class NamePrintableRefType: NamePrintable {}

private struct NamePrintableValueType: NamePrintable {}
