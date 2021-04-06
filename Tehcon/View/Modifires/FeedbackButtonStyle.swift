//
//  FeedbackButtonStyle.swift
//  Tehcon (iOS)
//
//  Created by Sergei Volkov on 13.03.2021.
//

import SwiftUI

struct FeedbackButtonStyle: ButtonStyle {
    
    var disable: Bool
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 40, maxHeight: .infinity, alignment: .center)
            .foregroundColor(disable ? Color(UIColor.label).opacity(0.5) : configuration.isPressed ? Color(UIColor.label).opacity(0.5) : Color(UIColor.label))
            .disabled(disable)
            .multilineTextAlignment(.leading)
    }
}
