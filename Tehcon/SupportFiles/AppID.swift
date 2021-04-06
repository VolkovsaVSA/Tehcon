//
//  AppID.swift
//  Neslis
//
//  Created by Sergey Volkov on 27.12.2020.
//

import Foundation

struct AppId {
    private init() {}
    
    private static let appID = "1558184969"
    static let appHttp = "http://itunes.apple.com/app/id" + AppId.appID
    static let appUrl = URL(string: "itms-apps://itunes.apple.com/app/id" + AppId.appID)
    static let feedbackEmail = "tehcon@vsa.su"
    static let developerUrl = URL(string: "https://apps.apple.com/developer/sergei-volkov/id1385708952")
    
}
