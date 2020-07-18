//
//  Corner.swift
//  
//
//  Created by Jaesung Lee on 2020/07/18.
//

import SwiftUI

/**
 Moves view to the specific corner.
 
 - Parameters:
    - alignment: The value that indicates corner in which you are going to move to. See `Alignmnet.Corner`
    - content: The content containing `View` conforming object.
 */
@available(iOS 13.0, *)
public struct Corner<Content: View>: View {
    public enum Alignment {
        case topLeft
        case topRight
        case bottomLeft
        case bottomRight
    }
    
    public let alignment: Corner.Alignment
    public let content: () -> Content
    
    public init(alignment: Corner.Alignment = .topLeft, @ViewBuilder content: @escaping () -> Content) {
        self.alignment = alignment
        self.content = content
    }
    
    public var body: some View {
        VStack {
            if alignment == .bottomLeft || alignment == .bottomRight { Spacer() }
            HStack {
                if alignment == .topRight || alignment == .bottomRight { Spacer() }
                content()
                if alignment == .topLeft || alignment == .bottomLeft { Spacer() }
            }
            if alignment == .topLeft || alignment == .topRight { Spacer() }
        }
    }
}
