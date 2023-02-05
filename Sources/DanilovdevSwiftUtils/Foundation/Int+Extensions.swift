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
}
