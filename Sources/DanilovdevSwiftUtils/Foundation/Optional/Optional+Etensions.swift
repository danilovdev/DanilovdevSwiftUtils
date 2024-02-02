//
//  Optional+Etensions.swift
//  
//
//  Created by Aleksei Danilov on 02.02.2024.
//

import Foundation

public extension Optional {
    func orDefault(value: Wrapped) -> Wrapped {
        self ?? value
    }
}
