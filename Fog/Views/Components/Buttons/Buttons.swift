//
//  WideButton.swift
//  Fog
//
//  Created by Rayan Waked on 7/16/22.
//

//MARK: Imports
import SwiftUI

//MARK: Variables
// File Specific
struct ButtonVariables {
    // Style Variables
    var text: String
    var icon: Image
    var background: Color
    var foreground: Color
    let opacity = 0.5
    
    // Function Variables
    var clicked: (() -> Void)
}

//MARK: Code
struct WideButton: View {
    //MARK: Function Variables
    var buttonVariables: ButtonVariables
    
    //MARK: Interface
    var body: some View {
        Button(action: buttonVariables.clicked) {
            HStack {
                // Button Icon
                Text(buttonVariables.icon)
                // Button Title
                Text(buttonVariables.text)
            }
            // Size
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: height * 0.05, maxHeight: height * 0.05)
            // Style
            .padding()
            .foregroundColor(buttonVariables.foreground)
            .background(buttonVariables.background.opacity(buttonVariables.opacity))
            .cornerRadius(16)
        }
    }
}

//MARK: Preview
struct WideButton_Previews: PreviewProvider {
    // Define Variables for Preview
    static let buttonVariablesPreview = ButtonVariables (
        text: "Title",
        icon: Image(systemName: "plus"),
        background: Color.red,
        foreground: Color.white,
        clicked: { print("clicked") }
    )
    
    // Display Preview
    static var previews: some View {
        WideButton(buttonVariables: buttonVariablesPreview)
    }
}
