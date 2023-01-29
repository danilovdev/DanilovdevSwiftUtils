//
//  Math.swift
//  
//
//  Created by Aleksei Danilov on 29.01.2023.
//

import Foundation

enum Math {
    static func pow(_ x: Double, _ n: Int) -> Double {
        var x = x
        var n = n
        if n < 0 {
            x = 1 / x
            n = -n
        }
        return customPower(x, n)
        
        func customPower(_ x: Double, _ n: Int) -> Double {
            if n == 0 { return 1.0 }
            if n % 2 == 0 {
                return customPower(x, n / 2) * customPower(x, n / 2)
            } else {
                return customPower(x, n / 2) * customPower(x, n / 2) * x
            }
        }
    }
}
