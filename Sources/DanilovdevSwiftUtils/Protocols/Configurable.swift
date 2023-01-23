//
//  Configurable.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation

public protocol Configurable {}

public extension Configurable {
    func with(config: (inout Self) -> Void) -> Self {
        var this = self
        config(&this)
        return this
    }
}

extension NSObject: Configurable {}
