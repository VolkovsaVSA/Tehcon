//
//  CalcView.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 12.01.2021.
//

import SwiftUI

struct CalcView: View {
    
    @ObservedObject var viewModel: CalcViewModel
    @State private var unitDescription = ""
    @State private var sheet: SheetTypes?

    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                PopOverView(isShowing: $viewModel.isShowingPopover, text: unitDescription) {
                    VStack {
                        HStack(spacing:0) {
                            Button(action: {
                                sheet = .settings
                            }, label: {
                                Image(systemName: "line.horizontal.3")
                                    .frame(width: 36, height: 36, alignment: .center)
                                    .foregroundColor(Color(UIColor.label))
                                    .background(
                                        RoundedRectangle(cornerRadius: 6)
                                            .modifier(ButtonShadowModifire())
                                            .foregroundColor(Color(UIColor.systemGray5))
                                    )
                            })
                            
                            Spacer()
                            Button {
                                sheet = .unitTypes
                            } label: {
                                Text(viewModel.filterTypes(unitType: viewModel.selectedUnitType).title)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(UIColor.label))
                                    .padding(8)
                                    .background(
                                        RoundedRectangle(cornerRadius: 6)
                                            .modifier(ButtonShadowModifire())
                                            .foregroundColor(Color(UIColor.systemGray5))
                                    )
                            }
                            Spacer()
                            Button {
                                unitDescription = viewModel.unitTypeDescription
                                viewModel.isShowingPopover.toggle()
                            } label: {
                                Text("?")
                                    .frame(width: 36, height: 36, alignment: .center)
                                    .foregroundColor(Color(UIColor.label))
                                    .background(
                                        RoundedRectangle(cornerRadius: 6)
                                            .modifier(ButtonShadowModifire())
                                            .foregroundColor(Color(UIColor.systemGray5))
                                    )
                            }

                            
                        }
                        .padding(.top)
                        VStack(spacing:0) {
                            HStack {
                                TextField("Enter unit", text: $viewModel.firstUnitText)
                                    .onChange(of: viewModel.firstUnitText, perform: { value in
                                        viewModel.calc()
                                    })
                                    .keyboardType(.decimalPad)
                                    
                                    .font(.system(size: 26, weight: .thin, design: .default))
                                    .frame(width: geometry.size.width * 0.75, alignment: .center)
                                    .padding(.vertical, 6)
                                    .padding(.trailing, 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.unitTF1)
                                            .offset(x: -24)
                                    )
                                    
                                Spacer()
                            }
                            HStack {
                                Spacer()
                                Text(viewModel.secondUnitText)
                                    .font(.system(size: 26, weight: .thin, design: .default))
                                    .frame(width: geometry.size.width * 0.75, alignment: .trailing)
                                    .padding(.vertical, 6)
                                    .padding(.leading, 40)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(.unitTF2)
                                            .offset(x: 24)
                                    )
                            }
                        }
                        .padding(.vertical, 10)
                        HStack {
                            VStack {
                                UnitDescriptionButtonView(selectedUnit: $viewModel.firstSelect,
                                                          unitDescription: $unitDescription,
                                                          isShowingPopover: $viewModel.isShowingPopover,
                                                          width: geometry.size.width,
                                                          selectedColor: GraphicsSettings.selectedColors[0])

                                if geometry.size.height > geometry.size.width {
                                    CalcButtonsListView(model: viewModel, itemSelected: $viewModel.firstSelect, width: geometry.size.width, selectedColor: GraphicsSettings.selectedColors[0])
                                } else {
                                    CalcButtonsListView(model: viewModel, itemSelected: $viewModel.firstSelect, width: geometry.size.width, selectedColor: GraphicsSettings.selectedColors[0])
                                }
                                
                            }
                            Spacer()
                            VStack {
                                UnitDescriptionButtonView(selectedUnit: $viewModel.secondSelect,
                                                          unitDescription: $unitDescription,
                                                          isShowingPopover: $viewModel.isShowingPopover,
                                                          width: geometry.size.width,
                                                          selectedColor: GraphicsSettings.selectedColors[1])
                                
                                if geometry.size.height > geometry.size.width {
                                    CalcButtonsListView(model: viewModel, itemSelected: $viewModel.secondSelect, width: geometry.size.width, selectedColor: GraphicsSettings.selectedColors[1])
                                } else {
                                    CalcButtonsListView(model: viewModel, itemSelected: $viewModel.secondSelect, width: geometry.size.width, selectedColor: GraphicsSettings.selectedColors[1])
                                }
                            }
                            
                        }

                    }
                    .padding(.horizontal)
                }
                

                VStack {
                    Spacer()
//                    if !UserDefaults.standard.bool(forKey: UDKeys.fv) {
//                        adsBanner(geometry: geometry)
//                            .ignoresSafeArea()
//                    }
                }
                .ignoresSafeArea()
            }
        }
        
        .onAppear() {
            viewModel.calc()
        }
        .sheet(item: $sheet) { item in
            
            switch item {
            case .unitTypes:
                CalcUnitsListView(model: viewModel)
            case .settings:
                SettingsView()
            default:
                EmptyView()
            }

        }
         
    }
    
    private func adsBanner(geometry: GeometryProxy) -> some View {
        let height: CGFloat = 90
        
        if geometry.size.height > geometry.size.width {
            return AdsManager.BannerVC(size: CGSize(width: geometry.size.width, height: height))
                .frame(width: geometry.size.width,
                       height: height,
                       alignment: .center)
        } else {
            return AdsManager.BannerVC(size: CGSize(width: geometry.size.width, height: height))
                .frame(width: geometry.size.width,
                       height: height,
                       alignment: .center)
        }
    }
}
