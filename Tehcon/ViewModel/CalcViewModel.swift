//
//  UnitLengthModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 13.01.2021.
//

import Foundation

class CalcViewModel: Identifiable, ObservableObject {
    
    init(unitTypes: [UnitTypeCalcProtocol]) {
        self.unitTypes = unitTypes
        let filteredType = (unitTypes.filter {$0.unitType == .UnitOfLength}).first
        units = filteredType!.units
        firstSelect = filteredType!.units[0]
        secondSelect = filteredType!.units[0]
        selectedUnitType = .UnitOfLength
        unitTypeDescription = filterTypes(unitType: selectedUnitType).typeDescription
    }
    
    let id = UUID()
    @Published var unitTypes: [UnitTypeCalcProtocol]
    @Published var units: [UnitCalcModel]
    @Published var firstUnitText = ""
    @Published var secondUnitText = " "
    @Published var firstSelect: UnitCalcModel
    @Published var secondSelect: UnitCalcModel
    @Published var selectedUnitType: MyUnitCalcType {
        didSet {
            units = filterTypes(unitType: selectedUnitType).units
            firstSelect = units[0]
            secondSelect = units[0]
            firstUnitText = ""
            secondUnitText = ""
            unitTypeDescription = filterTypes(unitType: selectedUnitType).typeDescription
            calc()
        }
    }
    @Published var unitTypeDescription = ""
    
    @Published var ads = AdsManager.init()
    @Published var isShowingPopover = false {
        willSet {
            if newValue {
                if adsCount >= 4 {
                    ads.interstitialScreen?.showAd()
                    adsCount = 0
                    UserDefaults.standard.setValue(adsCount, forKey: UDKeys.adsCount)
                } else {
                    adsCount += 1
                    UserDefaults.standard.setValue(adsCount, forKey: UDKeys.adsCount)
                }
            } else {
                if adsCount >= 4 {
                    ads.interstitialScreen?.requestInterstitialAds()
                }
            }
        }
    }
    private var adsCount: Int = UserDefaults.standard.integer(forKey: UDKeys.adsCount)
    
    
    func filterTypes(unitType: MyUnitCalcType)->UnitTypeCalcProtocol {
        return (unitTypes.filter { $0.unitType == unitType }).first!
    }
    
    func calc() {
        let textDouble = Double(firstUnitText.replacingOccurrences(of: ",", with: ".")) ?? 0
        secondUnitText = Measurement(value: textDouble, unit: firstSelect.unit).converted(to: secondSelect.unit).localeFormatFunc(style: .short)
    }
}
