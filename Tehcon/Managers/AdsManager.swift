//
//  AdsManager.swift
//  Tehcon (iOS)
//
//  Created by Sergei Volkov on 16.03.2021.
//

import UIKit
import SwiftUI
import GoogleMobileAds
import AppTrackingTransparency
//import AdSupport

class AdsManager: NSObject, ObservableObject {
    
    private struct AdMobConstant {
        static let applicationID = "ca-app-pub-8399858472733455~6488166318"
        static let banner1ID = "ca-app-pub-8399858472733455/2712572837"
        static let interstitial1ID = "ca-app-pub-8399858472733455/5088644100"
    }
    
    struct BannerSize {
        static let kGADAdSizeLeaderboard_: GADAdSize = kGADAdSizeLeaderboard
    }
    
    
    override init() {
        super.init()
        interstitialScreen = Interstitial()
    }
    
    var interstitialScreen: Interstitial?

    final class BannerVC: UIViewControllerRepresentable  {
        
        init(size: CGSize) {
            self.size = size
        }
        var size: CGSize

        func makeUIViewController(context: Context) -> UIViewController {
            let view = GADBannerView(adSize: GADAdSizeFromCGSize(size))
            let viewController = UIViewController()
            view.adUnitID = AdMobConstant.banner1ID
            view.rootViewController = viewController
            viewController.view.addSubview(view)
            viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeBanner.size)
            
            
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                let gadRequest = GADRequest()
                DispatchQueue.main.async {
                    gadRequest.scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                }
                view.load(gadRequest)
            })
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    }
    
    final class Interstitial: NSObject, GADFullScreenContentDelegate {
        private var interstitial: GADInterstitialAd?
        override init() {
            super.init()
            requestInterstitialAds()
        }
        func requestInterstitialAds() {
            print(#function)
            let request = GADRequest()
            request.scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                GADInterstitialAd.load(withAdUnitID: AdMobConstant.interstitial1ID, request: request, completionHandler: { [self] ad, error in
                    if let error = error {
                        print("Failed to load interstitial ad with error: \(error.localizedDescription)")
                        return
                    }
                    interstitial = ad
                    interstitial?.fullScreenContentDelegate = self
                })
            })
        }
        func showAd() {
            let root = UIApplication.shared.windows.first?.rootViewController
            if let fullScreenAds = interstitial {
                if !UserDefaults.standard.bool(forKey: UDKeys.fv) {
                    fullScreenAds.present(fromRootViewController: root!)
                }
            } else {
                print("not ready")
            }
        }
        func interstitialDidDismissScreen(_ ad: GADFullScreenPresentingAd) {
            print(#function)
            requestInterstitialAds()
        }
    }
    
    
}
