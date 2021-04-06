//
//  CalcButtonsListView.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 21.02.2021.
//

import SwiftUI

struct CalcButtonsListView: View {
    
    @State var model: CalcViewModel
    @Binding var itemSelected: UnitCalcModel
    @State var width: CGFloat
    var selectedColor: Color
    
    var body: some View {
        
        ScrollViewReader { scrollProxy in

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 2) {
                    ForEach(model.units, id:\.id) { item in
                        Button(action: {
                            itemSelected = item
                            model.calc()
                            UIApplication.shared.endEditing()
                        }, label: {
                            Text("\(item.title)")
                                .modifier(CalcButtonModifire(item: item, itemSelected: itemSelected, selectedColor: selectedColor, scaleEffect: checkSelected(item: item), width: width).animation(.easeIn(duration: 0.05)))
                        }).id(item.id)
                        
                    }
                    .padding(12)
                }
                .onChange(of: itemSelected) { _ in
                    withAnimation {
                        scrollProxy.scrollTo(itemSelected.id, anchor: .top)
                    }
                }
            }

        }
        

    }
    
    private func checkSelected(item: UnitCalcModel)->CGFloat {
        return item == itemSelected ? 1.17 : 1.0
    }
}

