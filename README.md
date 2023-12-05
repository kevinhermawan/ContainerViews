# ContainerViews

A SwiftUI library for crafting adaptable interfaces on iOS, iPadOS, and macOS.

## Overview

`ContainerViews` introduces SwiftUI views like `ResponsiveContainerView` and `SheetContainerView` to enhance interface adaptability across Apple platforms. `ResponsiveContainerView` dynamically adjusts to the horizontal size class, enabling fluid layouts in varying screen environments. `SheetContainerView` offers enhanced modal presentation control, integrating customizable actions within sheet toolbars. These views aid in crafting interfaces that are responsive and intuitive, accommodating various user interactions and screen sizes.

## Documentation

You can find the documentation here: [https://kevinhermawan.github.io/ContainerViews/documentation/containerviews](https://kevinhermawan.github.io/ContainerViews/documentation/containerviews)

## Installation

You can add `ContainerViews` as a dependency to your project using Swift Package Manager by adding it to the dependencies value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/kevinhermawan/ContainerViews.git", .upToNextMajor(from: "1.0.0"))
]
```

Alternatively, in Xcode:

1. Open your project in Xcode.
2. Click on `File` -> `Swift Packages` -> `Add Package Dependency...`
3. Enter the repository URL: `https://github.com/kevinhermawan/ContainerViews.git`
4. Choose the version you want to add. You probably want to add the latest version.
5. Click `Add Package`.

## License

```
MIT License

Copyright (c) 2023 Kevin Hermawan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
