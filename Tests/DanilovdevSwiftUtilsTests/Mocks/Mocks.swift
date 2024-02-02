//
//  Mocks.swift
//  
//
//  Created by Aleksei Danilov on 20.05.2023.
//

import Foundation
@testable import DanilovdevSwiftUtils

enum Mocks { }

extension Mocks {
    static var mockBinaryTree: BinaryTree {
        let sevenTree = BinaryTree(7)
        let eightTree = BinaryTree(8)
        let sixTree = BinaryTree(6)
        sixTree.left = sevenTree
        sixTree.right = eightTree
        
        let threeTree = BinaryTree(3)
        threeTree.right = sixTree
        
        
        let fiveTree = BinaryTree(5)
        let fourTree = BinaryTree(4)
        let twoTree = BinaryTree(2)
        twoTree.left = fourTree
        twoTree.right = fiveTree
        
        let root = BinaryTree(1)
        root.left = twoTree
        root.right = threeTree
        return root
    }
}
