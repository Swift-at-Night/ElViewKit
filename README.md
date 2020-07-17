![screenshot](./screenshot.png)

# ElViewKit

![Swift Package](https://img.shields.io/badge/Swift_Package-fa7343?style=for-the-badge&logo=swift&logoColor=white)
![Swift 5.3](https://img.shields.io/badge/Swift-5.3+-fa7343?style=for-the-badge&logo=swift&logoColor=white)
![SwiftUI 2](https://img.shields.io/badge/SwiftUI-2+-blue?style=for-the-badge&logo=swift&logoColor=white)
![Xcode 12](https://img.shields.io/badge/Xcode-12+-1575F9?style=for-the-badge&logo=xcode&logoColor=white)
![iOS 13+](https://img.shields.io/badge/iOS-13+-999999?style=for-the-badge&logo=apple&logoColor=white)

A Swift package providing some view for SwiftUI.

- Copyright: ©Jaesung Lee.

## Requirements

- Xcode 12+
- iOS13+ (Some features may require iOS14)

## Features
### View
#### BlurView
```swift
BlurView(style: .regular)
```
The view that has blur effect. This view allows you to blur a specific area
#### URLImage
```swift
URLImage("https://someurl")
```
The view that shows image based on URL. 
> **IMPORTANT** You have to set `URLImage.defaultName` before loading URL image. I recommend that you set the value inside of initializer.

### Modifier
#### Image resizer
```swift
Image("backgroundImage")
    .resizedToFill(width: 100, height: 50)
```
- resizedToFit: Resize image and adjust aspect ratio as `.fit`. You don't need to call `resizable()`
- resizedToFill: Resize image and adjust aspect ratio as `.fill`. You don't need to call `resizable()`
> **NOTE** When you set width value only, the image shows square image.

## How to use
### Xcode project
Xcode > File > Swift Packages > Add Package Dependency > Enter repository URL: https://github.com/Swift-at-Night/ElViewKit

> **IMPORTANT** The version of the package must be `0.1.2` or later

- Example
```Swift
import ElViewKit
import SwiftUI

struct SomeView: View {
    var body: some View {
        ZStack {
            // Image Modifier
            Image("backgroundImage")
                .resizedToFill(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
                
            // Blur View
            BlurView(style: .regular).edgesIgnoringSafeArea(.all)
        
            // URL Image
            URLImage("https://avatars1.githubusercontent.com/u/68183707?s=200&v=4")
                .frame(width: 100, height: 100)
                .clipped()
        }            
    }
    
    init() {
        // URL Image
        URLImage.defaultName = "defaultImage"
    }
}

```

### Other Swift Package
Your Swift Package > `Package.swift` > Add new package to `dependencies` > Add `"ElViewKit"` to the target > Then, now you can import `ElViewKit` in your source file.

- Example
```swift
import PackageDescription

let package = Package(
    name: "SomePackage",
    products: [ 
        ... 
    ],
    dependencies: [
        .package(url: "https://github.com/Swift-at-Night/ElViewKit", from: "0.1.2") // 1. Add dependency to your swift package
    ],
    targets: [
        .target(
            name: "SomePackage",
            dependencies: ["ElViewKit"]),   // 2. Add ElViewKit to the target as dependency
        .testTarget(...),
    ]
)
```
