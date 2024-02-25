//
//  NSLayoutConstraint+Activate.swift
//  
//
//  Created by Aleksei Danilov on 24.02.2024.
//

import UIKit

public extension NSLayoutConstraint {
    @discardableResult
    func activate() -> NSLayoutConstraint {
        isActive = true
        return self
    }
    
    @discardableResult
    func deactivate() -> NSLayoutConstraint {
        isActive = false
        return self
    }
}

public extension Array where Element == NSLayoutConstraint {
    func activate() {
        NSLayoutConstraint.activate(self)
    }
    
    func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }
}
