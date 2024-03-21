//
//  UITextViewPublisherTests.swift
//
//
//  Created by Aleksei Danilov on 22.03.2024.
//

import UIKit
import Combine
import XCTest

@testable import DanilovdevSwiftUtils

final class UITextViewPublisherTests: XCTestCase {
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
        let textView = UITextView()
        var value = ""
        textView.textPublisher
            .sink(receiveValue: { val in
                value = val
            })
            .store(in: &cancellables)
        
        textView.text = "test"
        NotificationCenter.default.post(name: UITextView.textDidChangeNotification,
                                        object: textView)
        
        XCTAssertEqual("test", value)
    }
    
    func testAttributedTextPublisher() {
        let textView = UITextView()
        var value: NSAttributedString = NSAttributedString(string: "")
        textView.attributedTextPublisher
            .sink(receiveValue: { val in
                value = val
            })
            .store(in: &cancellables)
        
        textView.attributedText = NSAttributedString(string: "attributedText")
        NotificationCenter.default.post(name: UITextView.textDidChangeNotification,
                                        object: textView)
        
        XCTAssertEqual(NSAttributedString(string: "attributedText").string, value.string)
    }
}
