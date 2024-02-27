//
//  String+RemoveDuplicates.swift
//
//
//  Created by Aleksei Danilov on 25.02.2024.
//

import Foundation

public extension String {
    enum RemoveDuplicatesType {
        case nsOrderedSet
        case arrayContains
        case setContains
        case setInserted
        case filterUpdateValue
    }
    
    func removeDuplicates(removeType: RemoveDuplicatesType = .setContains) -> String {
        switch removeType {
        case .arrayContains:
            return StringHelper.removeDuplicatesArrayContains(self)
        case .setContains:
            return StringHelper.removeDuplicatesSetContains(self)
        case .nsOrderedSet:
            return StringHelper.removeDuplicatesSetContains(self)
        case .filterUpdateValue:
            return StringHelper.removeDuplicatesFilterUpdateValue(self)
        case .setInserted:
            return StringHelper.removeDuplicatesSetInserted(self)
        }
    }
}
