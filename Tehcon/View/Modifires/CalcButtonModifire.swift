//
//  CalcButtonModifire.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 13.01.2021.
//

import SwiftUI


struct CalcButtonModifire: ViewModifier {
    
    var item: UnitCalcModel
    var itemSelected: UnitCalcModel
    var selectedColor: Color
    var scaleEffect: CGFloat
    
    @State var width: CGFloat
   
    func body(content: Content) -> some View {
        content
            .fixedSize(horizontal: false, vertical: true)
            .padding(8)
            .multilineTextAlignment(.center)
            .foregroundColor(Color(UIColor.label))
            .frame(width: width * 0.35, height: 70, alignment: .center)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .modifier(ButtonShadowModifire())
                    .foregroundColor(item == itemSelected ? selectedColor : Color(UIColor.systemGray5))
                    
            ).scaleEffect(x: scaleEffect, y: scaleEffect, anchor: .center)
    }
}
