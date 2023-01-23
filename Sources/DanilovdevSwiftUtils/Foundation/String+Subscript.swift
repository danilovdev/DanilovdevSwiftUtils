//
//  File.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import Foundation

public extension String {
    func getValueAt(idx: Int) -> String {
        String(self[idx])
    }
    
    subscript(i: Int) -> Character {
        self[index(startIndex, offsetBy: i)]
    }
}
