# ContainerViews

A collection of reusable SwiftUI container views.

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
