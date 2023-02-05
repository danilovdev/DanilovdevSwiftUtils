//
//  Sequence+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 29.01.2023.
//

import Foundation

public extension Sequence where Element: Equatable {
    func notContains(_ element: Element) -> Bool {
        !contains(element)
    }
}

public extension Sequence where Element: Hashable {
    var uniqueValues: [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}

public extension Sequence where Element: Numeric {
    var sum: Element {
        reduce(0, +)
    }
}
