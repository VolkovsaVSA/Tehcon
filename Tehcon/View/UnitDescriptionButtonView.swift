//
//  UnitDescriptionButtonView.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 21.02.2021.
//

import SwiftUI

struct UnitDescriptionButtonView: View {
    
    @Binding var selectedUnit: UnitCalcModel
    @Binding var unitDescription: String
    @Binding var isShowingPopover: Bool
    @State var width: CGFloat
    var selectedColor: Color
    
    var body: some View {
        Button {
            unitDescription = selectedUnit.unitDescription
            withAnimation(Animation.easeIn(duration: 0.1)) {
                isShowingPopover.toggle()
            }
        } label: {
            HStack(spacing:2) {
                Text(selectedUnit.unit.loc)
                    .multilineTextAlignment(.center)
                ProportionView(upView: AnyView(Text("?")), downView: AnyView(Text("")), fontSize: 12, widthDivider: 0)
            }
            .frame(minWidth: width * 0.4, minHeight: 36, alignment: .center)
            
            .foregroundColor(Color(UIColor.label))
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .modifier(ButtonShadowModifire())
                    .foregroundColor(selectedColor)
            )
            
        }
    }
}


extension Dimension {
    var loc: String {
        let formatter = MeasurementFormatter()
        return formatter.string(from: self)
    }
}
