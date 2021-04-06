//
//  AppDelegate.swift
//  Tehcon (iOS)
//
//  Created by Sergei Volkov on 16.03.2021.
//

import Foundation
import GoogleMobileAds

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        IAPManager.shared.getProducts()
        
        return true
    }
}

