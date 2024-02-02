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

public func getAdjacencyList(_ edges: [[Int]]) -> [Int: [Int]] {
    var result: [Int: [Int]] = [:]
    for edge in edges {
        let source = edge[0]
        let dest = edge[1]
        result[source, default: []] += [dest]
        result[dest, default: []] += [source]
    }
    return result
}

func getAdjacencyList(_ root: BinaryTree) -> [Int: [Int]] {
    getAdjacencyList(getEdges(root))
}

func getEdges(_ root: BinaryTree) -> [[Int]] { // TODO: make generic
    var result: [[Int]] = []
    var queue = [root] // TODO: Replace with real queue
    while queue.isNotEmpty {
        let current = queue.removeFirst()
        if let left = current.left {
            result.append([current.value, left.value])
            queue.append(left)
        }
        if let right = current.right {
            result.append([current.value, right.value])
            queue.append(right)
        }
    }
    return result
}
