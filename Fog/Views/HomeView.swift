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
        ScrollView {
            //MARK: Main Container
            VStack(alignment: .leading, spacing: width/30) {
                
                //MARK: First Container (Row)
                HStack(alignment: .center, spacing: width/30) {
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
                
                //MARK: Second Container
                HStack(alignment: .center, spacing: width/30) {
                    //MARK: First Button
                    PrimaryButton(
                        text: "Custom Button",
                        icon: Image(systemName: "plus"),
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

            }
        }
        //MARK: Main Container Size
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        /// Looking for the padding? It's built into the width and height variables. See the FogApp File for further details.
    }
}

//MARK: Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
