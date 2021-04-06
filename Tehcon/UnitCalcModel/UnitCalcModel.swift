//
//  UnitCalcModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 16.01.2021.
//

import Foundation

class UnitCalcModel: Identifiable, Equatable {
    static func == (lhs: UnitCalcModel, rhs: UnitCalcModel) -> Bool {
        lhs.unit == rhs.unit
    }
    
    
    let id = UUID()
    var title: String
    var unit: Dimension
    var unitDescription: String
    
    init(title: String, unit: Dimension, unitDescription: String) {
        self.title = title
        self.unit = unit
        self.unitDescription = unitDescription
    }
    func localeFormatFunc(style: Formatter.UnitStyle)->String {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = style
        formatter.unitOptions = .providedUnit
        formatter.numberFormatter.numberStyle = .decimal
        formatter.numberFormatter.maximumFractionDigits = 4
        return formatter.string(from: unit)
    }
}
