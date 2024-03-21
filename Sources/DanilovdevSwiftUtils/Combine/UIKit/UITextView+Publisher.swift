//
//  UITextView+Publisher.swift
//
//
//  Created by Aleksei Danilov on 21.03.2024.
//

import UIKit
import Combine

public extension UITextView {
    var textPublisher: AnyPublisher<String, Never> {
        NotificationCenter.default
            .publisher(
                for: UITextView.textDidChangeNotification,
                object: self
            )
            .compactMap { ($0.object as? UITextView)?.text }
            .eraseToAnyPublisher()
    }
    
    var attributedTextPublisher: AnyPublisher<NSAttributedString, Never> {
        NotificationCenter.default
            .publisher(
                for: UITextView.textDidChangeNotification,
                object: self
            )
            .compactMap { ($0.object as? UITextView)?.attributedText }
            .eraseToAnyPublisher()
    }
}
