//
//  ButtonShadowModifire.swift
//  Tehcon (iOS)
//
//  Created by Sergei Volkov on 13.03.2021.
//

import SwiftUI


struct ButtonShadowModifire: ViewModifier {
    
    @Environment(\.colorScheme) var colorScheme
   
    func body(content: Content) -> some View {
        content
            .shadow(color: Color(colorScheme == .dark ? .black : UIColor.tertiaryLabel), radius: 2, x: 2, y: 2)
    }
}
