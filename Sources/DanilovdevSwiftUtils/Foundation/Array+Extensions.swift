//
//  Array+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 10.04.2023.
//

import Foundation

public extension Array where Element: Comparable {
    
    var isAscending: Bool {
        if count == 0 { return false }
        if count == 1 { return true }
        var prev = self[0]
        for i in 1..<count {
            if self[i] <= prev { return false }
            prev = self[i]
        }
        return true
    }
    
    var isDescending: Bool {
        if count == 0 { return false }
        if count == 1 { return true }
        var prev = self[0]
        for i in 1..<count {
            if self[i] >= prev { return false }
            prev = self[i]
        }
        return true
    }
    
    var isMonotonic: Bool {
        isAscending || isDescending
    }
    
    var isSorted: Bool {
        self == sorted(by: { $0 >= $1 }) || self == sorted(by: { $0 <= $1 })
    }
}

public extension Array where Element == Character {
    var stringValue: String {
        String(self)
    }
}
