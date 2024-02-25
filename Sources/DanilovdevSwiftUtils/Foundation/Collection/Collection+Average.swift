//
//  Collection+Average.swift
//  
//
//  Created by Aleksei Danilov on 25.02.2024.
//

import Foundation

public extension Collection where Element == Int {
    /// The median  is the middle of a sorted list.
    /// If there is no numbers then return nil.
    /// If there is odd  amount of numbers then return middle value.
    /// If there is even amount of numbers then return mean of this two middle numbers.
    var median: Double? {
        guard count > 0 else { return nil }
        let sortedCollection = sorted()
        let middle = count / 2
        if count.isEven {
            return Double(sortedCollection[middle - 1] + sortedCollection[middle]) / 2
        } else {
            return Double(sortedCollection[middle])
        }
    }
    
    
    /// The average is the sum numbers divided by count of this numbers.
    var average: Double? {
        guard count > 0 else { return nil }
        return (Double(sum) / Double(count))
    }
}
