//
//  File.swift
//  
//
//  Created by Aleksei Danilov on 22.02.2024.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class ConfigurableTests: XCTestCase {
    
    func testConfigurableForView() {
        let view = UIView()
        let secondView = view.with { value in
            value.backgroundColor = .red
        }
        XCTAssertTrue(view === secondView)
        XCTAssertEqual(view.backgroundColor, .red)
    }
}
