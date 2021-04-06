//
//  UnitsListView.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import SwiftUI

struct CalcUnitsListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var model: CalcViewModel
  
   
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                ForEach(model.unitTypes, id:\.id) { item in
                    
                    Button {
                        model.selectedUnitType = item.unitType
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: item.icon)
                                .frame(width: 30, height: 30, alignment: .center)
                            Text("\(item.title)")
                            Spacer()
                            if model.selectedUnitType == item.unitType {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.label)
                            }
                        }
                        .padding(6)
                        .background(Color.settingsViewBackground)
                        .cornerRadius(6.0)
                        
                    }
                    .foregroundColor(Color.label)
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                }
            }
        
            
            .navigationTitle(NSLocalizedString("Measuring units", comment: ""))
        }
        
    }
}
