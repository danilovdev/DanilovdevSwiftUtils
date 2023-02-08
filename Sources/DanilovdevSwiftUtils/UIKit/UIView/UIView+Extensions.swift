//
//  UIView+Extension.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation
import UIKit

public extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview(_:))
    }
}

public extension UIView {
    func getAllEmbeddedSubviews() -> [UIView] {
        var result = subviews
        for subview in subviews {
            result += subview.getAllEmbeddedSubviews()
        }
        return result
    }
    
    func getAllEmbeddedSubviews<T: UIView>(ofType: T.Type) -> [T] {
        var result = subviews.compactMap { $0 as? T }
        for subview in subviews {
            result += subview.getAllEmbeddedSubviews(ofType: ofType)
        }
        return result
    }
}
