//
//  ProportionView.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 11.12.2020.
//

import SwiftUI

struct ProportionView: View {
    
    var upView: AnyView
    var downView: AnyView
    var fontSize: CGFloat
    var widthDivider: CGFloat
    
    var body: some View {
        VStack(spacing: 0) {
            upView
            Divider()
                .background(Color(UIColor.label))
                .frame(width: widthDivider)
            downView
        }
        .font(.system(size: fontSize))
    }
}
