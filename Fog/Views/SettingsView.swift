//
//  SettingsView.swift
//  Fog
//
//  Created by Rayan Waked on 7/20/22.
//

//MARK: Imports
import SwiftUI

//MARK: Variables

//MARK: Code
struct SettingsView: View {
    var body: some View {
        VStack {
            WideButton(buttonVariables: ButtonVariables (
                text: "Go back",
                icon: Image(systemName: "circle"),
                background: Color.red,
                foreground: Color.white,
                clicked: { ButtonTest() }
            ))
        }
    }
}

//MARK: Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
