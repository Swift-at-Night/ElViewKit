//
//  SwiftUIView.swift
//  
//
//  Created by Sendbird-Jaesung on 2020/07/03.
//

import SwiftUI

/**
 URL을 통해 가져온 이미지를 보여주는 뷰 입니다.
 이미지는 `URLImageModel` 이라는 `ObservableObject`를 통해 뷰를 업데이트 시켜줍니다.
 
 - Important: 반드시 `URLImage.defaultName` 에 유효한 값을 먼저 세팅해주세요.
 */
@available(iOS 13.0, *)
public struct URLImage: View {
    @ObservedObject var urlImageModel: URLImageModel
    
    public static var defaultName: String = ""
    
    public init(urlString: String?) {
        urlImageModel = URLImageModel(urlString: urlString)
    }
    
    public var body: some View {
        Image(uiImage: urlImageModel.image ?? UIImage(named: URLImage.defaultName)!)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}

