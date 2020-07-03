//
//  SwiftUIView.swift
//  
//
//  Created by Jaesung Lee on 2020/06/26.
//

import SwiftUI

/**
 The view containing blur effect.
 */
@available(iOS 13.0, *)
public struct BlurView: UIViewRepresentable {
    public var style: UIBlurEffect.Style = .regular
    
    public func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    public func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
