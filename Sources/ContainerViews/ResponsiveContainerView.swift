//
//  ResponsiveContainerView.swift
//
//
//  Created by Kevin Hermawan on 05/12/23.
//

import SwiftUI

/// A SwiftUI view for iOS, macOS, and iPadOS that adapts its content based on the horizontal size class.
///
/// `ResponsiveContainerView` presents different content for regular and compact horizontal size classes. This adaptability is essential for handling variations in available horizontal space influenced by device type, orientation, and multitasking modes on iPad.
public struct ResponsiveContainerView<RegularContent: View, CompactContent: View>: View {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    private var isCompact: Bool {
        horizontalSizeClass == .compact
    }
    #else
    private let isCompact: Bool = false
    #endif
    
    private let regularContent: () -> RegularContent
    private let compactContent: () -> CompactContent
    
    /// Initializes a new `ResponsiveContainerView` with content tailored for regular and compact horizontal size classes.
    ///
    /// - Parameters:
    ///   - regularContent: Content for regular size class.
    ///   - compactContent: Content for compact size class.
    public init(
        @ViewBuilder regularContent: @escaping () -> RegularContent,
        @ViewBuilder compactContent: @escaping () -> CompactContent
    ) {
        self.regularContent = regularContent
        self.compactContent = compactContent
    }
    
    public var body: some View {
        if isCompact {
            compactContent()
        } else {
            regularContent()
        }
    }
}

#Preview {
    ResponsiveContainerView {
        Text("Regular Content")
    } compactContent: {
        Text("Compact Content")
    }
}
