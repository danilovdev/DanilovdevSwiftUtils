//
//  UIView+Constraints.swift
//  
//
//  Created by Aleksei Danilov on 23.01.2023.
//

import UIKit

public extension UIView {
    func addConstraints(
        toView: UIView,
        leading: CGFloat = 0,
        top: CGFloat = 0,
        trailing: CGFloat = 0,
        bottom: CGFloat = 0
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: toView.leadingAnchor, constant: leading).isActive = true
        topAnchor.constraint(equalTo: toView.topAnchor, constant: top).isActive = true
        trailingAnchor.constraint(equalTo: toView.trailingAnchor, constant: -trailing).isActive = true
        bottomAnchor.constraint(equalTo: toView.bottomAnchor, constant: -bottom).isActive = true
    }
    
    func addConstraints(
        toView: UIView,
        insets: UIEdgeInsets
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: toView.leadingAnchor, constant: insets.left).isActive = true
        topAnchor.constraint(equalTo: toView.topAnchor, constant: insets.top).isActive = true
        trailingAnchor.constraint(equalTo: toView.trailingAnchor, constant: -insets.right).isActive = true
        bottomAnchor.constraint(equalTo: toView.bottomAnchor, constant: -insets.bottom).isActive = true
    }
    
    func makeCenterEqualsToSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
    }
    
    func setHeight(_ value: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: value).isActive = true
    }
    
    func setWidth(_ value: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: value).isActive = true
    }
}

