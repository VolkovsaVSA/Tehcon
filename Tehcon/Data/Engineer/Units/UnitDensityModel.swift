//
//  UnitDensityModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 17.01.2021.
//

import Foundation

class UnitDensityModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfDensity
    var title = NSLocalizedString("Density", comment: "UnitCalcModel")
    var icon = "aqi.medium"
    var typeDescription = NSLocalizedString("The mass density or density of an object is a scalar value, which is equal to its mass per unit volume. In other words, density is the measure of the relative “heaviness” of different objects having a constant volume. The SI unit for density is kilograms per cubic meter (kg/m³).", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Kilogram per cubic meter", comment: "kilogramPerCubicMeter title"),
                      unit: UnitDensity.kilogramPerCubicMeter,
                      unitDescription: NSLocalizedString("A kilogram per cubic meter (kg/m³ or kg·m⁻³) is the SI derived unit of density. It is defined as mass in kilograms per volume in cubic meters. Its SI symbol is kg·m⁻³ or kg/m³.", comment: "kilogramPerCubicMeter unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gram per cubic meter", comment: "gramPerCubicMeter title"),
                      unit: UnitDensity.gramPerCubicMeter,
                      unitDescription: NSLocalizedString("A gram per cubic meter (g/m³) is a decimal fraction of the SI derived unit of density kg/m³, which is defined as mass in kilograms per volume in cubic meters. It is equal to 0.001 kg/m³.", comment: "gramPerCubicMeter unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milligram per cubic meter", comment: "milligramPerCubicMeter title"),
                      unit: UnitDensity.milligramPerCubicMeter,
                      unitDescription: NSLocalizedString("A milligram per cubic meter (mg/m³) is a decimal fraction of the SI derived unit of density kg/m³, which is defined as mass in kilograms per volume in cubic meters. It is equal to 10⁻⁶ kg/m³.", comment: "miligramPerCubicMeter unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kilogram per cubic centimeter", comment: "kilogramPerCubicCentimeter title"),
                      unit: UnitDensity.kilogramPerCubicCentimeter,
                      unitDescription: NSLocalizedString("A kilogram per cubic centimeter (kg/cm³) is a decimal multiple of the SI derived unit of density kg/m³, which is defined as mass in kilograms per volume in cubic meters. It is equal to 10⁶ kg/m³.", comment: "kilogramPerCubicCentimeter unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gram per cubic centimeter", comment: "gramPerCubicCentimeter title"),
                      unit: UnitDensity.gramPerCubicCentimeter,
                      unitDescription: NSLocalizedString("A gram per cubic centimeter (g/cm³) is a decimal multiple of the SI derived unit of density kg/m³, which is defined as mass in kilograms per volume in cubic meters. It is equal to 1000 kg/m³. Gram per cubic centimeter is also the cgs unit of density.", comment: "gramPerCubicCentimeter unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milligram per cubic centimeter", comment: "milligramPerCubicCentimeter title"),
                      unit: UnitDensity.milligramPerCubicCentimeter,
                      unitDescription: NSLocalizedString("A milligram per cubic centimeter (mg/cm³) is equal to the SI derived unit of density kg/m³, which is defined as mass in kilograms per volume in cubic meters. 1 mg/cm³ = 1 kg/m³.", comment: "milligramPerCubicCentimeter unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kilogram per litre", comment: "kilogramPerLitre title"),
                      unit: UnitDensity.kilogramPerLitre,
                      unitDescription: NSLocalizedString("A kilogram per liter (kg/L) is a unit of density, which is acceptable for use with SI. It is equal to 1000 kg/m³.", comment: "kilogramPerLitre unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gram per litre", comment: "gramPerLitre title"),
                      unit: UnitDensity.gramPerLitre,
                      unitDescription: NSLocalizedString("A gram per liter (g/L) is a unit of density, which is acceptable for use with SI. It is equal to 1 kg/m³.", comment: "gramPerLitre unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milligram per litre", comment: "milligramPerLitre title"),
                      unit: UnitDensity.milligramPerLitre,
                      unitDescription: NSLocalizedString("A milligram per liter (mg/L) is a unit of density, which is acceptable for use with SI. It is equal to 0.001 kg/m³.", comment: "milligramPerLitre unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kilogram per millilitre", comment: "kilogramPerMillilitre title"),
                      unit: UnitDensity.kilogramPerMillilitre,
                      unitDescription: NSLocalizedString("Mass of 1 kilogram per volume of a milliliter. Equivalent density of 1 000 000 kilograms per cubic meter. 1 kg/ml = 1000000 kg/m3.", comment: "kilogramPerMillilitre unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gram per millilitre", comment: "gramPerMillilitre title"),
                      unit: UnitDensity.gramPerMillilitre,
                      unitDescription: NSLocalizedString("", comment: "gramPerMillilitre unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milligram per millilitre", comment: "milligramPerMillilitre title"),
                      unit: UnitDensity.milligramPerMillilitre,
                      unitDescription: NSLocalizedString("The gram per milliliter is a unit of density in the metric system equal to 1,000 kilograms per cubic meter (1 g/mL = 1,000 kg/m3), the derived unit of density in the International System of Units (SI).", comment: "milligramPerMillilitre unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Pound per cubic yard", comment: "poundPerCubicYard title"),
                      unit: UnitDensity.poundPerCubicYard,
                      unitDescription: NSLocalizedString("A pound per cubic yard (lb/yd³) is a unit of density in the British (Imperial) and US customary systems. It is equal to 0.59 kg/m³.", comment: "poundPerCubicYard unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Pound per cubic foot", comment: "poundPerCubicFeets title"),
                      unit: UnitDensity.poundPerCubicFeets,
                      unitDescription: NSLocalizedString("A pound per cubic foot (lb/ft³) is a unit of density in the British (Imperial) and US customary systems. It is equal to 16.02 kg/m³.", comment: "poundPerCubicFeets unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Pound per cubic inch", comment: "poundPerCubicInch title"),
                      unit: UnitDensity.poundPerCubicInch,
                      unitDescription: NSLocalizedString("A pound per cubic inch (lb/in³) is a unit of density in the British (Imperial) and US customary systems. It is equal to 27679.91 kg/m³.", comment: "poundPerCubicInch unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Pound per gallon US", comment: "poundPerGallonUS title"),
                      unit: UnitDensity.poundPerGallonUS,
                      unitDescription: NSLocalizedString("A pound per US gallon (lb/US gal) is the US customary system unit of density. It is equal to 119.83 kg/m³.", comment: "poundPerGallonUS unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Pound per gallon UK", comment: "poundPerGallonUK title"),
                      unit: UnitDensity.poundPerGallonUK,
                      unitDescription: NSLocalizedString("A pound per UK gallon (lb/UK gal) is the British (Imperial) system unit of density. It is equal to 99.78 kg/m³.", comment: "poundPerGallonUK unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ounce per cubic foot", comment: "ouncePerCubicFeets title"),
                      unit: UnitDensity.ouncePerCubicFeet,
                      unitDescription: NSLocalizedString("An ounce per cubic foot (oz/ft³) is a unit of density in various systems of units including the British (Imperial) and US customary systems. Its size can vary from system to system.", comment: "ouncePerCubicFeets unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ounce per cubic inch", comment: "ouncePerCubicInch title"),
                      unit: UnitDensity.ouncePerCubicInch,
                      unitDescription: NSLocalizedString("An ounce per cubic inch (oz/in³) is a unit of density in various systems of units including the British (Imperial) and US customary systems. Its size can vary from system to system.", comment: "ouncePerCubicInch unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ounce per gallon US", comment: "ouncePerGallonUS title"),
                      unit: UnitDensity.ouncePerGallonUS,
                      unitDescription: NSLocalizedString("An ounce per US gallon (oz/US gal) is a unit of density in the US customary system. It is equal to 7.49 kg/m³.", comment: "ouncePerGallonUS unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ounce per gallon UK", comment: "ouncePerGallonUk title"),
                      unit: UnitDensity.ouncePerGallonUK,
                      unitDescription: NSLocalizedString("An ounce per UK gallon (oz/UK gal) is a unit of density in the British (Imperial) system. It is equal to 6.24 kg/m³.", comment: "ouncePerGallonUk unitDescription")),
    ]
}
