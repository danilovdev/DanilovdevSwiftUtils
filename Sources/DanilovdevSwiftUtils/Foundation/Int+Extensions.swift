//
//  Int+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 05.02.2023.
//

import Foundation

public extension Int {
    var allDivisors: [Int] {
        var result: [Int] = []
        for i in 1...self {
            if self % i == 0 {
                result.append(i)
            }
        }
        return result
    }
    
    var numberOf1Bits: Int {
        binaryArray.filter { $0 == 1 }.count
    }
    
    var binaryString: String {
        binaryArray.map { "\($0)" }.joined()
    }
    
    var binaryCharArray: [Character] {
        Array(binaryString)
    }
    
    var binaryArray: [Int] {
        guard self > 0 else { return [0] }
        var result: [Int] = []
        var n = self
        while n > 0 {
            let rest = n % 2
            result.insert(rest, at: 0)
            n /= 2
        }
        return result
    }
    
    var isPalindrome: Bool {
        reversed == self
    }
    
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
    
    var length: Int {
        String(self).count
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
