//
//  StringHelper.swift
//  
//
//  Created by Aleksei Danilov on 25.02.2024.
//

import Foundation

public enum StringHelper {
    static func removeDuplicatesArrayContains(_ input: String) -> String {
        var result = Array<Character>()
        for ch in input {
            if !result.contains(ch) {
                result.append(ch)
            }
        }
        return String(result)
    }
    
    static func removeDuplicatesSetContains(_ input: String) -> String {
        var usedChars = Set<Character>()
        var result = Array<Character>()
        for ch in input {
            if !usedChars.contains(ch) {
                result.append(ch)
                usedChars.insert(ch)
            }
        }
        return String(result)
    }
    
    static func removeDuplicatesNSOrderedSet(_ input: String) -> String {
        let array = input.map { String($0) }
        let orderedSet = NSOrderedSet(array: array)
        let result = Array(orderedSet) as! Array<String>
        return result.joined()
    }
    
    static func removeDuplicatesFilterUpdateValue(_ input: String) -> String {
        var used: [Character: Bool] = [:]
        let result = input.filter { used.updateValue(true, forKey: $0) == nil }
        return result
    }
    
    static func removeDuplicatesSetInserted(_ input: String) -> String {
        var used = Set<Character>()
        let result = input.filter { used.insert($0).inserted }
        return result
    }
}

