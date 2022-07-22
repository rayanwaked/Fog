//
//  SettingsView.swift
//  Fog
//
//  Created by Rayan Waked on 7/20/22.
//

//MARK: Imports
import SwiftUI

//MARK: Variables
/// None

//MARK: Code
struct SettingsView: View {
    //MARK: Variables
    @EnvironmentObject var appView: AppView
    
    //MARK: Interface
    var body: some View {
        VStack {
            WideButton(buttonVariables: ButtonVariables (
                text: "Go back",
                icon: Image(systemName: "circle"),
                background: Color.red,
                foreground: Color.white,
                clicked: {
                    appView.viewPage = 1
                }
            ))
        }
    }
}

//MARK: Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(AppView())
    }
}
