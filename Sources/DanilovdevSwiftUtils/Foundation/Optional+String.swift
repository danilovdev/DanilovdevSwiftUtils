//
//  Optional+String.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation

public extension Optional where Wrapped == String {
    var orEmpty: String {
        switch self {
        case .none:
            return ""
        case .some(let value):
            return value
        }
    }
}
