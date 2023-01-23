//
//  UIView+Make.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import UIKit

public extension UIView {
   static func make<T: UIView>(config: (T) -> Void) -> T {
        let object = T()
        config(object)
        return object
    }
}
