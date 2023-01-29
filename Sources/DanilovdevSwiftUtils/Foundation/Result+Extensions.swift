//
//  Result+Extensions.swift
//  
//
//  Created by Aleksei Danilov on 29.01.2023.
//

import Foundation

public extension Result {
    var value: Success? {
        switch self {
        case .success(let value):
            return value
        case .failure:
            return nil
        }
    }
}
