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
}
