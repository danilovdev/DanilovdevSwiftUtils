//
//  UIViewExtensionsTests.swift
//  
//
//  Created by Aleksei Danilov on 08.02.2023.
//

import XCTest
@testable import DanilovdevSwiftUtils

final class UIViewExtensionsTests: XCTestCase {
    func testGetAllEmbeddedSubviews() {
        let view = UIView()
        view.addSubviews(
            UIView(),
            UILabel(),
            UIButton(),
            UIView(),
            UISegmentedControl()
        )
        XCTAssertEqual(view.getAllEmbeddedSubviews().count, 5)
    }
    
    func testGetAllEmbeddedSubviewsDeepEmbedded() {
        let view = UIView()
        let view2 = UIView()
        let view3 = UIView()
        view.addSubviews(
            UIView(),
            UILabel(),
            UIButton(),
            UIView(),
            view2,
            view3,
            UISegmentedControl()
        )
        view2.addSubviews(
            UIView(),
            UILabel(),
            UIButton(),
            UIView(),
            UISegmentedControl()
        )
        view3.addSubviews(
            UIView(),
            UILabel(),
            UIView()
        )
        XCTAssertEqual(view.getAllEmbeddedSubviews().count, 15)
    }
    
    func testGetAllEmbeddedSubviewsOfType() {
        let view = UIView()
        view.addSubviews(
            UIView(),
            UILabel(),
            UIButton(),
            UIView(),
            UISegmentedControl(),
            UILabel(),
            UILabel()
        )
        XCTAssertEqual(view.getAllEmbeddedSubviews(ofType: UILabel.self).count, 3)
    }
    
    func testGetAllEmbeddedSubviewsDeepEmbeddedOfType() {
        let view = UIView()
        let view2 = UIView()
        let view3 = UIView()
        view.addSubviews(
            UIView(),
            UILabel(),
            UIButton(),
            UIView(),
            view2,
            view3,
            UISegmentedControl()
        )
        view2.addSubviews(
            UIView(),
            UILabel(),
            UIButton(),
            UIView(),
            UISegmentedControl()
        )
        view3.addSubviews(
            UIView(),
            UILabel(),
            UIView()
        )
        XCTAssertEqual(view.getAllEmbeddedSubviews(ofType: UILabel.self).count, 3)
    }
}
