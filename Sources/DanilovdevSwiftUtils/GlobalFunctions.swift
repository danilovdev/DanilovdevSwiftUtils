//
//  GlobalFunctions.swift
//  
//
//  Created by Aleksei Danilov on 08.02.2023.
//

import Foundation

func makeFlat<T>(_ array: [Any]) -> [T] {
    var result: [T] = []
    for anyItem in array {
        if let item = anyItem as? T {
            result.append(item)
        } else if let item = anyItem as? [Any] {
            result += makeFlat(item)
        }
    }
    return result
}


