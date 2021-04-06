//
//  Extention+UIApplication.swift
//  Tehcon
//
//  Created by Sergei Volkov on 05.04.2021.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
