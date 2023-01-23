//
//  UIEdgeInsets+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation
import UIKit

public extension UIEdgeInsets {
    init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }
}
