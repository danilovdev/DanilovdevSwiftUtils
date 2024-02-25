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
        [
            leadingAnchor.constraint(equalTo: toView.leadingAnchor, constant: leading),
            topAnchor.constraint(equalTo: toView.topAnchor, constant: top),
            trailingAnchor.constraint(equalTo: toView.trailingAnchor, constant: -trailing),
            bottomAnchor.constraint(equalTo: toView.bottomAnchor, constant: -bottom)
        ].activate()
    }
    
    func addConstraints(
        toView: UIView,
        insets: UIEdgeInsets
    ) {
        translatesAutoresizingMaskIntoConstraints = false
        [
            leadingAnchor.constraint(equalTo: toView.leadingAnchor, constant: insets.left),
            topAnchor.constraint(equalTo: toView.topAnchor, constant: insets.top),
            trailingAnchor.constraint(equalTo: toView.trailingAnchor, constant: -insets.right),
            bottomAnchor.constraint(equalTo: toView.bottomAnchor, constant: -insets.bottom)
        ].activate()
    }
    
    func makeCenterEqualsToSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        [
            centerYAnchor.constraint(equalTo: superview.centerYAnchor),
            centerXAnchor.constraint(equalTo: superview.centerXAnchor)
        ].activate()
    }
    
    func setHeight(_ value: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: value).activate()
    }
    
    func setWidth(_ value: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: value).activate()
    }
}

