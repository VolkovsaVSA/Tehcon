//
//  SheetTypes.swift
//  Tehcon
//
//  Created by Sergei Volkov on 12.03.2021.
//

import Foundation

enum SheetTypes: Identifiable {
    
    case unitTypes, settings, sendMail
    var id: Int {
        hashValue
    }
}

