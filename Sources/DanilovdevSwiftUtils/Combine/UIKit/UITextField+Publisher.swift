//
//  UITextField+Publisher.swift
//
//
//  Created by Aleksei Danilov on 21.03.2024.
//

import UIKit
import Combine

public extension UITextField {
    var textPublisher: AnyPublisher<String, Never> {
        NotificationCenter.default
            .publisher(
                for: UITextField.textDidChangeNotification,
                object: self
            )
            .compactMap { ($0.object as? UITextField)?.text }
            .eraseToAnyPublisher()
    }
    
    var attributedTextPublisher: AnyPublisher<NSAttributedString, Never> {
        NotificationCenter.default
            .publisher(
                for: UITextField.textDidChangeNotification,
                object: self
            )
            .compactMap { ($0.object as? UITextField)?.attributedText }
            .eraseToAnyPublisher()
    }
}
