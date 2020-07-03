//
//  Image.ElViewKit.swift
//  
//
//  Created by Jaesung Lee on 2020/06/26.
//

import SwiftUI

@available(OSX 10.15, *)
@available(iOS 13.0, *)
public extension Image {
    /**
     Resize `Image` view with `fill` content mode.  If you want square shape, please assign the width value only.
     
     - Parameters:
        - width: The width value.
        - height: The height value. If the value is `nil`, the height value is same as the width value.
     */
    func resizedToFill(width: CGFloat, height: CGFloat? = nil) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height ?? width)
            .clipped()
    }
    
    /**
     Resize `Image` view with `fit` content mode.  If you want square shape, please assign the width value only.
     
     - Parameters:
     - width: The width value.
     - height: The height value. If the value is `nil`, the height value is same as the width value.
     */
    func resizedToFit(width: CGFloat, height: CGFloat? = nil) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: width, height: height ?? width)
            .clipped()
    }
}
