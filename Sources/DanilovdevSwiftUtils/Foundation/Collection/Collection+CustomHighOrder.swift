//
//  Collection+CustomHighOrder.swift
//
//
//  Created by Aleksei Danilov on 26.02.2024.
//

import Foundation

public extension Collection {
    
    func customMap<T>(_ modifier: (Element) -> T) -> [T] {
        var result: [T] = []
        for item in self {
            let newItem = modifier(item)
            result.append(newItem)
        }
        return result
    }
    
    func customFilter(_ condition: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for item in self {
            if condition(item) {
                result.append(item)
            }
        }
        return result
    }
    
    func customReduce<T>(_ initial: T, _ modifier: (_ accumulated: T, _ next: Element) -> T) -> T {
        var result = initial
        for item in self {
            result = modifier(result, item)
        }
        return result
    }
    
    func customCompactMap<T>(_ modifier: (Element) -> T?) -> [T] {
        var result: [T] = []
        for item in self {
            if let newItem = modifier(item) {
                result.append(newItem)
            }
        }
        return result
    }
    
    func customFlatMap<T>(_ modifier: (Element) -> [T]) -> [T] {
        var result: [T] = []
        for item in self {
            let newItem = modifier(item)
            result.append(contentsOf: newItem)
        }
        return result
    }
}
