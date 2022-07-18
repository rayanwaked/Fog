//
//  FogApp.swift
//  Fog
//
//  Created by Rayan Waked on 7/7/22.
//

//MARK: Imports
import SwiftUI

//MARK: Global Varialbes
//MARK: Width
var width: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        // -0.05 As built in padding on leading and trailing edges
        return UIScreen.main.bounds.width * 0.8
    } else {
        // +0.05 As built in padding reduction on leading and trailing edges
        return UIScreen.main.bounds.width * 0.89
    }
}
//MARK: Height
var height: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        return UIScreen.main.bounds.height * 1
    } else {
        return UIScreen.main.bounds.height * 1
    }
}
//MARK: Padding
var gridPadding: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        return UIScreen.main.bounds.width / 30
    } else {
        return UIScreen.main.bounds.width / 30
    }
}

//MARK: Main App Struct
@main
struct FogApp: App {
    var body: some Scene {
        WindowGroup {
            //MARK: Main App View
            MainView()
        }
    }
}
