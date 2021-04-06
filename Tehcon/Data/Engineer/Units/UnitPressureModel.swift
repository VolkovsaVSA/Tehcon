//
//  UnitPressureModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitPressureModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfPressure
    var title = NSLocalizedString("Pressure", comment: "UnitCalcModel")
    var icon = "rectangle.compress.vertical"
    var typeDescription = NSLocalizedString("Pressure is the ratio of force to the area over which that force is distributed. In other words, pressure is force per unit area applied in a direction perpendicular to the surface of an object.\nPressure may be measured in any unit of force divided by any unit of area. The SI unit of pressure is the pascal (Pa). One pascal is defined as one newton per square meter. A pressure of 1 Pa is small, therefore everyday pressures are often stated in kilopascals (1 kPa = 1000 Pa).", comment: "UnitOfPressure type description")
    var units: [UnitCalcModel] = [
        
        UnitCalcModel(title: NSLocalizedString("Newtons per meters squared", comment: "newtonsPerMetersSquared title"),
                      unit: UnitPressure.newtonsPerMetersSquared,
                      unitDescription: NSLocalizedString("A newton per square meter (N/m²) is the SI derived unit of pressure, stress, Young’s modulus and ultimate tensile strength. By definition, it is equal to pascal.", comment: "newtonsPerMetersSquared description")),
        UnitCalcModel(title: NSLocalizedString("Pascals", comment: "pascals title"),
                      unit: UnitPressure.pascals,
                      unitDescription: NSLocalizedString("A pascal (Pa) is the SI derived unit of pressure, stress, Young’s modulus and ultimate tensile strength. It is a measure of force per unit area, defined as one newton per square meter.", comment: "pascals description")),
        UnitCalcModel(title: NSLocalizedString("Hectopascals", comment: "hectopascals title"),
                      unit: UnitPressure.hectopascals,
                      unitDescription: NSLocalizedString("A hectopascal (hPa) is a decimal multiple of the pascal, which is the SI derived unit of pressure, stress, Young’s modulus and ultimate tensile strength. It is a measure of force per unit area, defined as one newton per square meter.", comment: "hectopascals description")),
        UnitCalcModel(title: NSLocalizedString("Kilopascals", comment: "kilopascals title"),
                      unit: UnitPressure.kilopascals,
                      unitDescription: NSLocalizedString("A kilopascal (kPa) is a decimal multiple of the pascal, which is the SI derived unit of pressure, stress, Young’s modulus and ultimate tensile strength. It is a measure of force per unit area, defined as one newton per square meter.", comment: "kilopascals description")),
        UnitCalcModel(title: NSLocalizedString("Megapascals", comment: "megapascals title"),
                      unit: UnitPressure.megapascals,
                      unitDescription: NSLocalizedString("A megapascal (MPa) is a decimal multiple of the pascal, which is the SI derived unit of pressure, stress, Young’s modulus and ultimate tensile strength. It is a measure of force per unit area, defined as one newton per square meter.", comment: "megapascals description")),
        UnitCalcModel(title: NSLocalizedString("Gigapascals", comment: "gigapascals title"),
                      unit: UnitPressure.gigapascals,
                      unitDescription: NSLocalizedString("A gigapascal (GPa) is a decimal multiple of the pascal, which is the SI derived unit of pressure, stress, Young’s modulus and ultimate tensile strength. It is a measure of force per unit area, defined as one newton per square meter.", comment: "gigapascals description")),
        UnitCalcModel(title: NSLocalizedString("Bars", comment: "bars title"),
                      unit: UnitPressure.bars,
                      unitDescription: NSLocalizedString("A bar (symbol bar) is a non-SI unit of pressure, defined as exactly equal to 10⁵ Pa or 10⁶ dyn/cm² in CGS. It is approximately equal to the atmospheric pressure on Earth at sea level.", comment: "bars description")),
        UnitCalcModel(title: NSLocalizedString("Millibars", comment: "millibars title"),
                      unit: UnitPressure.millibars,
                      unitDescription: NSLocalizedString("A millibar (mbar) is a decimal fraction of bar, which is the non-SI unit of pressure, defined as exactly equal to 100,000 Pa. It is approximately equal to the atmospheric pressure on Earth at sea level.", comment: "millibars description")),
        UnitCalcModel(title: NSLocalizedString("Millimeters of mercury", comment: "millimetersOfMercury title"),
                      unit: UnitPressure.millimetersOfMercury,
                      unitDescription: NSLocalizedString("A millimeter of mercury (mmHg) is a non-SI unit of pressure. It is defined as the pressure exerted at the base of a column of mercury 1 mm high, when the density of the fluid is 13.5951 g/cm³ (this occurs at 0°C or 32°F), at a place where the acceleration of gravity is 9.80665 m/s². 1 mmHg is roughly equal to 1 Torr.", comment: "millimetersOfMercury description")),
        UnitCalcModel(title: NSLocalizedString("Inches of mercury", comment: "inchesOfMercury title"),
                      unit: UnitPressure.inchesOfMercury,
                      unitDescription: NSLocalizedString("An inch of mercury (inHg) is a non-SI unit of pressure. It is defined as the pressure exerted at the base of a column of mercury 1 inch (25.4 mm) high, when the density of the fluid is 13.5951 g/cm³ (this occurs at 0°C or 32°F), at a place where the acceleration of gravity is 9.80665 m/s². 1 inHg is roughly equal to 25.4 Torr.", comment: "inchesOfMercury description")),
        UnitCalcModel(title: NSLocalizedString("Pounds force per square inch", comment: "poundsForcePerSquareInch title"),
                      unit: UnitPressure.inchesOfMercury,
                      unitDescription: NSLocalizedString("A pound-force per square inch (lbf/in², psi) is a unit of pressure, stress, Young’s modulus and ultimate tensile strength in the US Customary Units and British Imperial Units. It is a measure of force per unit area.", comment: "poundsForcePerSquareInch description")),

        UnitCalcModel(title: NSLocalizedString("Dynes per square centimeter", comment: "dynesPerSquareCentimeter title"),
                      unit: UnitPressure.dynesPerSquareCentimeter,
                      unitDescription: NSLocalizedString("A pound-force per square inch (lbf/in², psi) is a unit of pressure, stress, Young’s modulus and ultimate tensile strength in the US Customary Units and British Imperial Units. It is a measure of force per unit area.", comment: "dynesPerSquareCentimeter description")),
        UnitCalcModel(title: NSLocalizedString("Kip per square inch", comment: "ksi title"),
                      unit: UnitPressure.ksi,
                      unitDescription: NSLocalizedString("A kip per square inch (ksi, kip/in²) is a unit of pressure, stress, Young’s modulus and ultimate tensile strength in the US Customary Units and British Imperial Units. It is a measure of force per unit area.\nA kip or kip-force, or kilopound (kip, klb, kipf) is a non-SI non-metric unit of force. It is equal to 1,000 pounds-force and used primarily by American architects and engineers to measure engineering loads. 1 kip = 4448.22 newtons (N) = 4.44822 kilonewtons (kN). The name kip comes from combining two words: “kilo” and “pound”. It is also called kilopound-force.", comment: "ksi description")),
        UnitCalcModel(title: NSLocalizedString("Torr", comment: "torr title"),
                      unit: UnitPressure.torr,
                      unitDescription: NSLocalizedString("A torr (symbol Torr) is a non-SI unit of pressure. It is approximately equal to the fluid pressure exerted by a millimeter of mercury. 1 torr ≈ 1 mmHg", comment: "torr description")),
        UnitCalcModel(title: NSLocalizedString("Technical atmosphere", comment: "technicalAtmosphere title"),
                      unit: UnitPressure.technicalAtmosphere,
                      unitDescription: NSLocalizedString("A technical atmosphere (at) is a non-SI metric unit of pressure equal to one kilogram-force per square centimeter (kgf/cm²). It is a measure of force per unit area. 1 at = 98.0665 kPa ≈ 0.96784 standard atmospheres.", comment: "technicalAtmosphere description")),
        UnitCalcModel(title: NSLocalizedString("Standard atmosphere", comment: "standardAtmosphere title"),
                      unit: UnitPressure.standardAtmosphere,
                      unitDescription: NSLocalizedString("A standard atmosphere (atm) is an obsolete non-SI international unit of pressure defined as 101.325 kPa. For practical purposes, it has been replaced by the bar, which is 100 kPa.", comment: "standardAtmosphere description")),
        UnitCalcModel(title: NSLocalizedString("Barye", comment: "barye title"),
                      unit: UnitPressure.barye,
                      unitDescription: NSLocalizedString("A barye (Ba), also barad, barrie, bary or barie is the CGS unit of pressure equal to 1 dyne per square centimetre. The name has its origin in the Greek word βάρος (baros) meaning weight. 1 Ba = 0.1 Pa.", comment: "barye description")),
        UnitCalcModel(title: NSLocalizedString("Meter of sea water", comment: "meterOfSeaWater title"),
                      unit: UnitPressure.meterOfSeaWater,
                      unitDescription: NSLocalizedString("A meter of sea water (msw) is a non-SI unit of pressure. 1 msw is equal to 0.1 bars. The unit is used by divers.", comment: "meterOfSeaWater description")),
        UnitCalcModel(title: NSLocalizedString("Meter of water", comment: "meterOfWater title"),
                      unit: UnitPressure.meterOfWater,
                      unitDescription: NSLocalizedString("A meter of water (mAq, mH₂O) is a non-SI unit of pressure. It is defined as the pressure exerted at the base of a column of water 1 m high, at 4°C (temperature of maximum water density), at the standard acceleration of gravity. 1 mAq is roughly equal to 74 torrs. This unit is often used in medicine and in water supply networks.", comment: "meterOfWater description")),
    ]
}
