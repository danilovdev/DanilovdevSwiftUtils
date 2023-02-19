//
//  Decimal+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 19.02.2023.
//

import Foundation

public extension Decimal {
    /// Get integer value from decimal
    var intValue: Int {
        NSDecimalNumber(decimal: self).intValue
    }
}
