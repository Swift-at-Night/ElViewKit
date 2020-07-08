//
//  File.swift
//  
//
//  Created by Sendbird-Jaesung on 2020/07/03.
//

import SwiftUI

@available(iOS 13.0, *)
class URLImageModel: ObservableObject {
    @Published var image: UIImage?
    var urlString: String?
    
    init(urlString: String?) {
        self.urlString = urlString
        loadImage()
    }
    
    func loadImage() {
        guard let urlString = urlString else { return }
        guard let url = URL(string: urlString) else { return }
        
        ImageCache.shared.load(url: url) { image, error in
            guard error == nil else {
                print(error?.localizedDescription ?? "Failed to load image")
                return
            }
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                
                self.image = image
            }
        }
    }
}
