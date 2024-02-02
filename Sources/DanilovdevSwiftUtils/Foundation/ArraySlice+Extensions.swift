//
//  ArraySlice+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 02.02.2024.
//

import Foundation

public extension ArraySlice {
    var toArray: Array<Element> {
        Array(self)
    }
}
