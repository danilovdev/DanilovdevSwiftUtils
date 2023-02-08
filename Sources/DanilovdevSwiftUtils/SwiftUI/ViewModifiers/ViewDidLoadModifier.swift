//
//  ViewDidLoadModifier.swift
//  
//
//  Created by Aleksei Danilov on 08.02.2023.
//

import Foundation
import SwiftUI

public struct ViewDidLoadModifier: ViewModifier {
    @State private var viewDidLoad = false
    let action: (() -> Void)?
    
    public func body(content: Content) -> some View {
        content.onAppear {
            if viewDidLoad == false {
                viewDidLoad = true
                action?()
            }
        }
    }
}

public extension View {
    func onViewDidLoad(perform action: Completion? = nil) -> some View {
        modifier(ViewDidLoadModifier(action: action))
    }
}
