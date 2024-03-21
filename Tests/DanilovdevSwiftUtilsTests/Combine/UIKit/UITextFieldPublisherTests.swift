//
//  UITextFieldPublisherTests.swift
//
//
//  Created by Aleksei Danilov on 21.03.2024.
//

import UIKit
import Combine
import XCTest

@testable import DanilovdevSwiftUtils

final class UITextFieldPublisherTests: XCTestCase {
    private var cancellables: Set<AnyCancellable> = []
    
    override func setUp() {
        super.setUp()
        cancellables = []
    }
    
    override func tearDown() {
        cancellables = []
        super.tearDown()
    }
    
    func testTextPublisher() {
        let textField = UITextField()
        var value = ""
        textField.textPublisher
            .sink(receiveValue: { val in
                value = val
            })
            .store(in: &cancellables)
        
        textField.text = "test"
        NotificationCenter.default.post(name: UITextField.textDidChangeNotification,
                                        object: textField)
        
        XCTAssertEqual("test", value)
    }
    
    func testAttributedTextPublisher() {
        let textField = UITextField()
        var value: NSAttributedString = NSAttributedString(string: "")
        textField.attributedTextPublisher
            .sink(receiveValue: { val in
                value = val
            })
            .store(in: &cancellables)
        
        textField.attributedText = NSAttributedString(string: "attributedText")
        NotificationCenter.default.post(name: UITextField.textDidChangeNotification,
                                        object: textField)
        
        XCTAssertEqual(NSAttributedString(string: "attributedText").string, value.string)
    }
}
