//
//  Ads.swift
//  Fog
//
//  Created by Rayan Waked on 7/20/22.
//

//MARK: Imports
import SwiftUI

//MARK: Variables
struct AdVariables {
    var edgeAlign = (-width * 0.135)
    var opacity = 0.5
}

//MARK: Code
struct Ads: View {
    //MARK: Variables
    var adVariables: AdVariables
    
    var body: some View {
        //MARK: AdView
        HStack() {
            Spacer()
            Circle()
                .padding(.trailing, adVariables.edgeAlign)
                .foregroundColor(.red.opacity(adVariables.opacity))
                .frame(width: width / 8)
        }
        .frame(maxWidth: .infinity)
    }
}

//MARK: Preview
struct Ads_Previews: PreviewProvider {
    // Define Variables for Preview
    static let adVariablesPreview = AdVariables (
    )
    
    // Display Preview
    static var previews: some View {
        Ads(adVariables: adVariablesPreview)
    }
}
