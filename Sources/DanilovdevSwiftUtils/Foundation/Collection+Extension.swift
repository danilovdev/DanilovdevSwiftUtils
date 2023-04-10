//
//  Collections+Extension.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation

public extension Collection {
    var isNotEmpty: Bool {
        !isEmpty
    }
    
    subscript (safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
    
    func counter() -> [Element: Int] where Element: Hashable {
        var dict: [Element: Int] = [:]
        for element in self {
            dict[element, default: 0] += 1
        }
        return dict
    }
}
