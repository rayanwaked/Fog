//
//  Button.swift
//  Fog
//
//  Created by Rayan Waked on 7/16/22.
//

//MARK: Imports
import SwiftUI

//MARK: Code
struct PrimaryButton: View {
    
    //MARK: Variables
    //Style Variables
    var text: String
    var icon: Image
    var background: Color
    var foreground: Color
    var opacity = 0.5
    // Function Variables
    var clicked: (() -> Void)
    
    //MARK: Interface
    var body: some View {
        Button(action: clicked) {
            HStack {
                icon
                Text(text)
            }
            //MARK: Size
            .frame(width: width*0.375, height: height*0.065)
            //MARK: Style
            .padding()
            .foregroundColor(foreground)
            .background(background.opacity(opacity))
            .cornerRadius(16)
        }
    }
}

//MARK: Preview
struct ContentView: View {
    var body: some View {
        PrimaryButton(
            text: "Custom Button",
            icon: Image(systemName: "plus"),
            background: Color.blue,
            foreground: Color.white
        ) {
            print("Clicked!")
        }
    }
}

