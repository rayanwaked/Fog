//
//  LargeButton.swift
//  Fog
//
//  Created by Rayan Waked on 7/16/22.
//

//MARK: Imports
import SwiftUI

//MARK: Code
struct LargeButton: View {
    
    //MARK: Variables
    //Style Variables
    var text: String
    var icon: Image
    var background: Color
    var foreground: Color
    var opacity = ButtonVariables.opacity
    // Function Variables
    var clicked: (() -> Void)
    
    //MARK: Interface
    var body: some View {
        Button(action: clicked) {
            
            HStack {
                //MARK: Button Icon
                icon
                //MARK: Button Title
                Text(text)
            }
            //MARK: Size
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: height * 0.25, maxHeight: height * 0.25)
            //MARK: Style
            .padding()
            .foregroundColor(foreground)
            .background(background.opacity(opacity))
            .cornerRadius(16)
            
        }
    }
}

//MARK: Preview
struct LargeButton_Previews: PreviewProvider {
    static var previews: some View {
        WideButton(
            text: "Custom Button",
            icon: Image(systemName: "plus"),
            background: Color.blue,
            foreground: Color.white
        ) {
            print("Clicked!")
        }
    }
}