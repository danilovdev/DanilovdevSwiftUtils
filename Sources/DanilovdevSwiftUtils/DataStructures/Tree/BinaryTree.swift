//
//  BinaryTree.swift
//  
//
//  Created by Aleksei Danilov on 19.05.2023.
//

import Foundation

class BinaryTree {
    var value: Int
    
    var left: BinaryTree?
    
    var right: BinaryTree?
    
    init(_ value: Int) {
        self.value = value
    }
}

extension BinaryTree {
    func findNodesDistanceK(target: Int, _ k: Int) -> [Int] {
        let edges = getEdges(self)
        let adjacencyList = getAdjacencyList(edges)
        
        var counter = k
        var result: [Int] = [target]
        var visited = Set<Int>()
        
        while (!result.isEmpty && counter > 0) {
            counter -= 1
            let size = result.count
            for _ in 0..<size {
                let current = result.removeFirst()
                visited.insert(current)
                let dest = adjacencyList[current] ?? []
                result += dest.filter { !visited.contains($0) }
            }
        }
        
        return result
    }
}


