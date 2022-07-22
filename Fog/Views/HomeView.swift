//
//  HomeView.swift
//  Fog
//
//  Created by Rayan Waked on 7/8/22.
//

//MARK: Imports
import SwiftUI

//MARK: Code
struct HomeView: View {
    //MARK: Variables
    @EnvironmentObject var appView: AppView
    
    //MARK: Interface
    var body: some View {
        //MARK: Main Container
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: gridPadding) {
                //MARK: First Container (Row)
                WideButton(buttonVariables: ButtonVariables (
                    text: "Title",
                    icon: Image(systemName: "plus"),
                    background: Color.orange,
                    foreground: Color.white,
                    clicked: {
                        appView.viewPage = 2
                        }
                ))

                //MARK: Second Container (Row)
                HStack(alignment: .center, spacing: gridPadding) {
                    // First Button
                    WideButton(buttonVariables: ButtonVariables (
                        text: "Title",
                        icon: Image(systemName: "plus"),
                        background: Color.blue,
                        foreground: Color.white,
                        clicked: { print("Button 2 Clicked") }
                    ))

                    // Second Button
                    WideButton(buttonVariables: ButtonVariables (
                        text: "Title",
                        icon: Image(systemName: "plus"),
                        background: Color.blue,
                        foreground: Color.white,
                        clicked: { print("Button 3 Clicked") }
                    ))
                }
            }
         //MARK: Spacer
         Spacer()
        }
    }
}

//MARK: Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(AppView())
    }
}
