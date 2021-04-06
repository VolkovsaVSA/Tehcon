//
//  ContentView.swift
//  Tehcon
//
//  Created by Sergei Volkov on 05.04.2021.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        IAPManager.shared.getProducts()
    }
    
    var body: some View {
        CalcView(viewModel: CalcViewModel(unitTypes: engineerCalcData))
            .background(
                Image("AppStoreIcon")
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 8.0)
                    .overlay(Color.black.opacity(colorScheme == .dark ? 0.7 : 0.25))
                    .ignoresSafeArea()
            )
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
