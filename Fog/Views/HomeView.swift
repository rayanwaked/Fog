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
    /// None
    
    //MARK: Interface
    var body: some View {
        //MARK: Main Container
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: gridPadding) {
                //MARK: Title
                Text("Home")
                    .font(.largeTitle.bold())
                    .padding(.top, height * 0.025)
                    .padding(.bottom, height * 0.015)
                
                //MARK: First Container (Row)
                HStack() {
                    WideButton(buttonVariables: ButtonVariables (
                        text: "Title",
                        icon: Image(systemName: "plus"),
                        background: Color.orange,
                        foreground: Color.white,
                        opacity: 0.5,
                        clicked: { ButtonTest() }
                    ))
                }

                //MARK: Second Container (Row)
                HStack(alignment: .center, spacing: gridPadding) {
                    //MARK: First Button
                    WideButton(buttonVariables: ButtonVariables (
                        text: "Title",
                        icon: Image(systemName: "plus"),
                        background: Color.blue,
                        foreground: Color.white,
                        opacity: 0.5,
                        clicked: { print("Button 2 Clicked") }
                    ))

                    //MARK: Second Button
                    WideButton(buttonVariables: ButtonVariables (
                        text: "Title",
                        icon: Image(systemName: "plus"),
                        background: Color.blue,
                        foreground: Color.white,
                        opacity: 0.5,
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
    }
}
