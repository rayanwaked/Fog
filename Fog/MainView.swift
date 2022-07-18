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
            
            VStack {
                //MARK: Main View
                HomeView()
            }
            //MARK: Superview Padding
            .padding([.leading, .trailing], gridPadding)
            
            //MARK: Ad View
            HStack() {
                Spacer()
                Circle()
                    .padding(.trailing, -width * 0.135)
                    .foregroundColor(.orange.opacity(1))
                    .frame(width: width / 8)
            }
            .frame(maxWidth: .infinity)
            
        }
        //MARK: Superview Size
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
    }
}

//MARK: Preview
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
