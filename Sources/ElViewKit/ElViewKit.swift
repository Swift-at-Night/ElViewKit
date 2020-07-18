struct ElViewKit {
    var text = "Hello, World!"
}

import SwiftUI

@available(OSX 10.16, *)
@available(iOS 14.0, *)
public struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    public var views: [LibraryItem] {
        LibraryItem(
            Corner(alignment: .topLeft, content: {
                Text("Hello world!")
            })
        )
        
        LibraryItem(
            BlurView(style: .regular),
            title: "Blur View", category: .control
        )
        
        LibraryItem(
            URLImage(urlString: nil),
            title: "URL Image", category: .control
        )
    }
    
    @LibraryContentBuilder
    public func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.resizedToFill(width: 100.0, height: 100.0)
        )
        
        LibraryItem(
            base.resizedToFit(width: 100.0, height: 100.0)
        )
    }
}


