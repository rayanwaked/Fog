//
//  WideButton.swift
//  Fog
//
//  Created by Rayan Waked on 7/16/22.
//

//MARK: Imports
import SwiftUI

public var buttonTest: Bool = true

func ButtonTest() {
    switch buttonTest {
        
    case true: buttonTest = false
    case false: buttonTest = true
        
    }
    
    print(buttonTest)
}

//MARK: Variables
struct ButtonVariables {
    // Style Variables
    var text: String
    var icon: Image
    var background: Color
    var foreground: Color
    var opacity = 0.5
    
    // Function Variables
    var clicked: (() -> Void)
}

//MARK: Wide Button
//MARK: Code
struct WideButton: View {
    //MARK: Function Variables
    var buttonVariables: ButtonVariables
    
    //MARK: Interface
    var body: some View {
        Button(action: buttonVariables.clicked) {
            HStack {
                //MARK: Button Icon
                Text(buttonVariables.icon)
                //MARK: Button Title
                Text(buttonVariables.text)
            }
            //MARK: Size
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: height * 0.05, maxHeight: height * 0.05)
            //MARK: Style
            .padding()
            .foregroundColor(buttonVariables.foreground)
            .background(buttonVariables.background.opacity(buttonVariables.opacity))
            .cornerRadius(16)
        }
    }
}

//MARK: Preview
struct WideButton_Previews: PreviewProvider {
    static let buttonVariablesPreview = ButtonVariables (
        text: "Title",
        icon: Image(systemName: "plus"),
        background: Color.red,
        foreground: Color.white,
        opacity: 0.5,
        clicked: { print("clicked") }
    )
    
    static var previews: some View {
        WideButton(buttonVariables: buttonVariablesPreview)
    }
}
