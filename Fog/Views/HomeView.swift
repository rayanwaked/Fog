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
                    WideButton(
                        text: "Custom Button",
                        icon: Image(systemName: "plus"),
                        background: Color.green,
                        foreground: Color.white
                    ) {
                        print("Clicked!")
                    }
                }
                
                //MARK: Second Container (Row)
                HStack(alignment: .center, spacing: gridPadding) {
                    //MARK: First Button
                    PrimaryButton(
                        text: "Custom Button",
                        icon: Image(systemName: "star"),
                        background: .blue,
                        foreground: .white
                    ) {
                        print("Clicked!")
                    }
                    
                    //MARK: Second Button
                    PrimaryButton(
                        text: "Custom Button",
                        icon: Image(systemName: "circle"),
                        background: .yellow,
                        foreground: .black
                    ) {
                        print("Clicked!")
                    }
                }
                
                //MARK: Third Container (Row)
                HStack(alignment: .center, spacing: gridPadding) {
                    //MARK: First Button
                    PrimaryButton(
                        text: "Custom Button",
                        icon: Image(systemName: "star"),
                        background: .blue,
                        foreground: .white
                    ) {
                        print("Clicked!")
                    }
                    
                    //MARK: Second Button
                    PrimaryButton(
                        text: "Custom Button",
                        icon: Image(systemName: "circle"),
                        background: .yellow,
                        foreground: .black
                    ) {
                        print("Clicked!")
                    }
                }
                
                //MARK: Fourth Container (Row)
                HStack() {
                    WideButton(
                        text: "Custom Button",
                        icon: Image(systemName: "plus"),
                        background: Color.purple,
                        foreground: Color.white
                    ) {
                        print("Clicked!")
                    }
                }
                
                //MARK: Fifth Container (Row)
                HStack() {
                    LargeButton(
                        text: "Custom Button",
                        icon: Image(systemName: "plus"),
                        background: Color.pink,
                        foreground: Color.white
                    ) {
                        print("Clicked!")
                    }
                }
                
            }
            
//         //MARK: Spacer
//         Spacer()
            
        }
    }
}

//MARK: Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
