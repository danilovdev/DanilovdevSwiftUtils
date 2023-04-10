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

public extension Collection where Element: Hashable {
    var isUnique: Bool {
        count == uniqueValues.count
    }
}

public extension Collection where Element: Hashable & Comparable {
    var mostFrequent: Element? {
        let sorted = counter().sorted(by: { tuple1, tuple2 in
            if tuple1.value == tuple2.value {
                return tuple1.key < tuple2.key
            }
            return tuple1.value > tuple2.value
        })
        return sorted.first?.key
    }
    
    var leastFrequent: Element? {
        let sorted = counter().sorted(by: { tuple1, tuple2 in
            if tuple1.value == tuple2.value {
                return tuple1.key < tuple2.key
            }
            return tuple1.value < tuple2.value
        })
        return sorted.first?.key
    }
}
