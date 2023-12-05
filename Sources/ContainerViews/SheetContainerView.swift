//
//  SheetContainerView.swift
//
//
//  Created by Kevin Hermawan on 05/12/23.
//

import SwiftUI

/// A SwiftUI container view designed for use within a `.sheet` modifier, featuring optional cancellation and confirmation actions.
///
/// `SheetContainerView` is tailored to present content within a modal sheet. It is particularly useful when you need to add cancellation and confirmation actions to the modal presentation. The view leverages SwiftUI's `ViewBuilder` to define its content, and it dynamically adds toolbar items for cancellation and confirmation actions if they are provided.
public struct SheetContainerView<Content: View>: View {
    private let content: () -> Content
    private var cancellationTitle: LocalizedStringKey?
    private var cancellationAction: (() -> Void)?
    private var confirmationTitle: LocalizedStringKey?
    private var confirmationAction: (() -> Void)?
    
    /// Initializes a new `SheetContainerView` with the specified content.
    ///
    /// This initializer allows for the creation of a `SheetContainerView` with custom content. The content is specified using a closure that returns a `View`, making it highly flexible for various use cases.
    ///
    /// - Parameter content: A closure that returns the content to be displayed in the sheet.
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        content()
            .toolbar {
                if let cancellationTitle, let cancellationAction {
                    ToolbarItem(placement: .cancellationAction) {
                        Button(cancellationTitle, action: cancellationAction)
                    }
                }
                
                if let confirmationTitle, let confirmationAction {
                    ToolbarItem(placement: .confirmationAction) {
                        Button(confirmationTitle, action: confirmationAction)
                    }
                }
            }
    }
    
    /// Adds a cancellation action to the sheet.
    ///
    /// This method configures a cancellation button with a title and an action. The button is displayed in the sheet's toolbar and performs the specified action when tapped.
    ///
    /// - Parameters:
    ///   - title: The localized title for the cancellation button.
    ///   - action: A closure to be executed when the cancellation button is tapped.
    /// - Returns: An updated `SheetContainerView` with the cancellation action.
    public func cancellation(title: LocalizedStringKey, action: @escaping () -> Void) -> SheetContainerView {
        var view = self
        view.cancellationTitle = title
        view.cancellationAction = action
        
        return view
    }
    
    /// Adds a confirmation action to the sheet.
    ///
    /// This method configures a confirmation button with a title and an action. The button is displayed in the sheet's toolbar and performs the specified action when tapped.
    ///
    /// - Parameters:
    ///   - title: The localized title for the confirmation button.
    ///   - action: A closure to be executed when the confirmation button is tapped.
    /// - Returns: An updated `SheetContainerView` with the confirmation action.
    public func confirmation(title: LocalizedStringKey, action: @escaping () -> Void) -> SheetContainerView {
        var view = self
        view.confirmationTitle = title
        view.confirmationAction = action
        
        return view
    }
}

#Preview {
    NavigationStack {
        VStack {
            Text("Content")
        }
        .navigationTitle("Title")
        .sheet(isPresented: .constant(true)) {
            NavigationStack {
                SheetContainerView {
                    Text("Sheet Content")
                }
                .cancellation(title: "Cancel", action: {})
                .confirmation(title: "Confirm", action: {})
                .navigationTitle("Sheet Title")
            }
        }
    }
}
