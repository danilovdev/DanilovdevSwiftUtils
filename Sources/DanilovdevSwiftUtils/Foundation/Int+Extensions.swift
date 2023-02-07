//
//  Int+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 05.02.2023.
//

import Foundation

public extension Int {
    var digits: [Int] {
        var num = self
        var result: [Int] = []
        while num > 0 {
            let i = num % 10
            result.append(i)
            num /= 10
        }
        return result.reversed()
    }
    
    var reversed: Int {
        var x = self
        if x == 0 { return 0 }
        var isNegative = false
        if x < 0 { isNegative = true }
        if isNegative { x = -x }
        var result = 0
        for i in digits.reversed() {
            result = result * 10 + i
        }
        return isNegative ? -result : result
    }
}
