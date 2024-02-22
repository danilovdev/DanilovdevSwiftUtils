//
//  NamePrintable.swift
//
//
//  Created by Aleksei Danilov on 22.02.2024.
//

import Foundation

public protocol NamePrintable {
    static var typeName: String { get }
    
    var typeName: String { get }
}

public extension NamePrintable {
    static var typeName: String {
        String(describing: self)
    }
    
    var typeName: String {
        String(describing: type(of: self))
    }
}
