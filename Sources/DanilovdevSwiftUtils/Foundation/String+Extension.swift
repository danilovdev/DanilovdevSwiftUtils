//
//  File.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation

public extension String {
    var hasNumbers: Bool {
        toCharArray.filter { $0.isNumber }.isNotEmpty
    }
    
    var hasSpaces: Bool {
        toCharArray.filter { $0.isWhitespace }.isNotEmpty
    }
    
    var isPalindrome: Bool {
        let array = toCharArray
        var left = 0
        var right = array.count - 1
        while left < right {
            let leftVal = array[left]
            let rightVal = array[right]
            if (leftVal != rightVal) { return false }
            left += 1
            right -= 1
        }
        return true
    }
    
    var canBeConvertedToPalindrome: Bool {
        let counter = counter()
        return counter.filter { $0.value % 2 == 1 }.count <= 1
    }
    
    var toCharArray: [Character] {
        Array(self)
    }
    
    var intValue: Int? {
        Int(self)
    }
    
    func getValueAt(idx: Int) -> String {
        String(self[idx])
    }
    
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(startIndex, offsetBy: range.upperBound)
        return String(self[start..<end])
    }
    
    subscript(_ range: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(startIndex, offsetBy: range.upperBound)
        return String(self[start...end])
    }
    
    subscript(_ i: Int) -> String {
        let start = index(startIndex, offsetBy: i)
        let end = index(start, offsetBy: 1)
        return String(self[start..<end])
    }
    
    subscript(charPosition: Int) -> Character {
        self[index(startIndex, offsetBy: charPosition)]
    }
}
