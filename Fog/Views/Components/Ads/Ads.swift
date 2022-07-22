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
    @State var showingSubview = false
    // Style Variables
    
    // Functional Variables
    var clicked: (() -> Void)
}

//MARK: Code
struct Ads: View {
    //MARK: Variables
    var adVariables: AdVariables
    
    //MARK: Inteface
    var body: some View {
        //MARK: AdView
        HStack() {
            Spacer()
            Button(action: adVariables.clicked) {
                ZStack {
                    Circle()
                        .padding(.trailing, -width * 0.135)
                        .foregroundColor(.red.opacity(0.5))
                        .frame(width: width / 10)
                    Text(Image(systemName: "chevron.left"))
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .padding(.leading, 10)
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

//MARK: Preview
struct Ads_Previews: PreviewProvider {
    // Define Variables for Preview
    static let adVariablesPreview = AdVariables (
        clicked: {
            
        }
    )
    
    // Display Preview
    static var previews: some View {
        Ads(adVariables: adVariablesPreview)
    }
}
