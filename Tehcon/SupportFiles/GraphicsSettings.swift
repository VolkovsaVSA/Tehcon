//
//  GraphicsSettings.swift
//  Tehcon (iOS)
//
//  Created by Sergei Volkov on 14.03.2021.
//

import SwiftUI
import Foundation

extension Color {
    static let unitTF1 = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1) : #colorLiteral(red: 0.8, green: 0.9254901961, blue: 0.7882352941, alpha: 1)
    })
    static let unitTF2 = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1) : #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    })
    static let settingsViewBackground = Color(UIColor { traitCollection in
        return traitCollection.userInterfaceStyle == .dark ? #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1) : #colorLiteral(red: 0.8, green: 0.9254901961, blue: 0.7882352941, alpha: 1)
    })
}

struct GraphicsSettings {
    static let selectedColors = [Color.unitTF1, Color.unitTF2]
}
