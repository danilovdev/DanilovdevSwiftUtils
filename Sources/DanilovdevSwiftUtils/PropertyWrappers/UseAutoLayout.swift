//
//  UseAutoLayout.swift
//  
//
//  Created by Aleksei Danilov on 08.02.2023.
//

import Foundation
import UIKit

@propertyWrapper
public struct UseAutoLayout<T: UIView> {
    public var wrappedValue: T {
        didSet {
            setAutoLayout()
        }
    }
    
    public init(wrappedValue: T) {
        self.wrappedValue = wrappedValue
        setAutoLayout()
    }
    
    private func setAutoLayout() {
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}


