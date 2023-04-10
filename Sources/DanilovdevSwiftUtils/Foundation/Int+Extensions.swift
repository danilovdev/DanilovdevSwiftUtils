//
//  Int+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 05.02.2023.
//

import Foundation

public extension Int {
    var isEven: Bool {
        self % 2 == 0
    }
    
    var isOdd: Bool {
        self % 2 != 0
    }
    
    var isPowerOf2: Bool {
        var n = self
        while n > 1 {
            let rest = n % 2
            if rest != 0 { return false }
            n /= 2
        }
        return true
    }
    
    var isSqr: Bool {
        var i = 1
        while i * i <= self {
            if (i * i == self) { return true }
            i += 1
        }
        return false
    }
    
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
    
    func isPowerOf(_ value: Int) -> Bool {
        var n = self
        while n > 1 {
            let rest = n % value
            if rest != 0 { return false }
            n /= value
        }
        return true
    }
}
