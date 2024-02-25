//
//  NSLayoutConstraintActivateTests.swift
//
//
//  Created by Aleksei Danilov on 24.02.2024.
//

import XCTest
import UIKit
@testable import DanilovdevSwiftUtils

final class NSLayoutConstraintActivateTests: XCTestCase {
    
    func testActivate() {
        // given
        let parentView = UIView()
        let subView = UILabel()
        parentView.addSubview(subView)
        
        // when
        parentView.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        let constraint = subView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor).activate()
        
        // then
        XCTAssertTrue(constraint.isActive)
    }
    
    func testDeactivate() {
        // given
        let parentView = UIView()
        let subView = UILabel()
        parentView.addSubview(subView)
        
        // when
        parentView.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        let constraint = subView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor).activate()
        
        // then
        XCTAssertTrue(constraint.isActive)
        
        // when
        constraint.deactivate()
        
        // then
        XCTAssertFalse(constraint.isActive)
    }
    
    func testActivateArray() {
        // given
        let parentView = UIView()
        let subView = UILabel()
        parentView.addSubview(subView)
        
        parentView.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        let constraint1 = subView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor)
        let constraint2 = subView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor)
        
        // when
        [constraint1, constraint2].activate()
        
        // then
        XCTAssertEqual([true, true], [constraint1, constraint2].map { $0.isActive })
        
    }
    
    func testDeactivateArray() {
        // given
        let parentView = UIView()
        let subView = UILabel()
        parentView.addSubview(subView)
        
        parentView.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        let constraint1 = subView.leadingAnchor.constraint(equalTo: parentView.leadingAnchor)
        let constraint2 = subView.trailingAnchor.constraint(equalTo: parentView.trailingAnchor)
        
        // when
        [constraint1, constraint2].deactivate()
        
        // then
        XCTAssertEqual([false, false], [constraint1, constraint2].map { $0.isActive })
    }
}
