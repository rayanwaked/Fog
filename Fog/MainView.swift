//
//  MainView.swift
//  Fog
//
//  Created by Rayan Waked on 7/7/22.
//

/* This file's intended use is to act as a view controller. If this app uses multiple screens, they will be added and controlled here. For now, the only screen is HomeView. */

//MARK: Imports
import SwiftUI

//MARK: Code
struct MainView: View {
    var body: some View {
        ZStack {
            //MARK: Superview
            VStack {
                if buttonTest {
                    HomeView()
                }  else {
                    SettingsView()
                }
            }
            .padding([.leading, .trailing], gridPadding)
            
            //MARK: AdView
            HStack() {
                Ads(adVariables: AdVariables (
                ))
            }
            .frame(maxWidth: .infinity)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

//MARK: Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
