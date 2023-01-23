//
//  File.swift
//  
//
//  Created by Aleksei Danilov on 24.01.2023.
//

import Foundation

public protocol Copying {
    init(original: Self)
}

public extension Copying {
    func copy() -> Self {
        Self.init(original: self)
    }
}

extension Array where Element: Copying {
    public func clone() -> Array {
        map { $0.copy() }
    }
}
