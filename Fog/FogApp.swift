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
        return UIScreen.main.bounds.width * 0.95
    } else {
        // +0.125 As built in padding reduction on leading and trailing edges
        return UIScreen.main.bounds.width * 1.125
    }
}

//MARK: Height
var height: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        // -0.05 As built in padding on leading and trailing edges
        return UIScreen.main.bounds.height * 0.95
    } else {
        return UIScreen.main.bounds.height * 1
    }
}

//MARK: Padding
var borderPadding: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        return UIScreen.main.bounds.width * 0
    } else {
        return UIScreen.main.bounds.width * -0.125
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
