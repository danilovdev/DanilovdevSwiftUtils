//
//  UIView+Contained.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation
import UIKit

public extension UIView {
    func contained(with insets: UIEdgeInsets) -> UIView {
        let container = UIView()
        container.addSubview(self)
        addConstraints(toView: container, insets: insets)
        return container
    }
}
