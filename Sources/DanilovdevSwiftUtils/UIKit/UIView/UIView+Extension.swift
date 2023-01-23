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
