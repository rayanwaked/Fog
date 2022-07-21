//
//  FogApp.swift
//  Fog
//
//  Created by Rayan Waked on 7/7/22.
//

//MARK: Imports
import SwiftUI

//MARK: Global Varialbes
// Width
var width: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        return UIScreen.main.bounds.width * 1 /// iPhone Sizing
    } else {
        return UIScreen.main.bounds.width * 1 /// iPad and Mac Sizing
    }
}
// Height
var height: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        return UIScreen.main.bounds.height * 1 /// iPhone Sizing
    } else {
        return UIScreen.main.bounds.height * 1 /// iPad and Mac Sizing
    }
}
// Padding
var gridPadding: CGFloat {
    if UIDevice.current.userInterfaceIdiom == .phone {
        return UIScreen.main.bounds.width / 30  /// iPhone Sizing
    } else {
        return UIScreen.main.bounds.width / 30 /// iPad and Mac Sizing
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
