//
//  MainView.swift
//  Fog
//
//  Created by Rayan Waked on 7/7/22.
//

/* This file's intended use is to act as a view controller. If this app uses multiple screens, they will be added and controlled here. For now, the only screen is HomeView. */

//MARK: Imports
import SwiftUI

//MARK: Control Views
class AppView: ObservableObject {
    @Published var viewPage = 1
}

//MARK: Code
struct MainView: View {
    //MARK: Variables
    @EnvironmentObject var appView: AppView
    
    //MARK: Interface
    var body: some View {
        ZStack {
            //MARK: Superview
            VStack {
                switch appView.viewPage {
                case 1: HomeView()
                case 2: SettingsView()
                default: HomeView()
                }
            }
            .padding([.leading, .trailing], gridPadding)
            
            //MARK: AdView
            HStack() {
                Ads(adVariables: AdVariables (
                    clicked: { }))
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
            .environmentObject(AppView())
    }
}
