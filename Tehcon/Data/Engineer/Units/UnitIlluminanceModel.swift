//
//  UnitIlluminanceModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitIlluminanceModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfIlluminance
    var title = NSLocalizedString("Illuminance", comment: "unit type title")
    var icon = "lightbulb"
    var typeDescription = NSLocalizedString("In physics, illuminance is the total amount of light energy reaching an illuminated surface per unit area. It is a measure of the light intensity, as perceived by the human eye. In other words, illuminance defines how much the incident light illuminates the surface, wavelength-weighted by the luminosity function to correlate with human brightness perception.\nSimilarly, luminous emittance is the luminous flux per unit area emitted from a surface. Luminous emittance is also known as luminous exitance.\nOne can think of luminous flux, which is measured in lumens, as a measure of the total “amount” of visible light present. The illuminance is a measure of the intensity of illumination on a surface. The larger the area illuminated by a given light source, the more dimly this area will be lit by this light source. Therefore, illuminance is inversely proportional to area.\n\nIn SI derived units illuminance is measured in lux (lx) or lumens per square meter (1 lx = 1 lm/m² = 1 cd·sr/m²). In the CGS system, the unit of illuminance is the phot, which is equal to 10,000 lux. In photography a non-metric unit of illuminance, the foot-candle is often used. Foot-candle is defined as the amount of illumination the inside surface of a 1-foot radius sphere would be receiving if there were a uniform point source of one candela in the exact center of the sphere. Alternatively, it can be defined as the illuminance on a 1-square foot surface of which there is a uniformly distributed flux of one lumen. In other words, it is the amount of light that actually falls on a given surface. The foot-candle is equal to one lumen per square foot.", comment: "unit type description")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Lux", comment: "lux title"),
                      unit: UnitIlluminance.lux,
                      unitDescription: NSLocalizedString("A lux (lx) is the SI unit of illuminance and luminous emittance, measuring luminous flux per unit area. One lux is equal to one lumen per square meter: 1 lx = 1 lm/m² = 1 cd·sr/m².", comment: "lux unit description")),
        UnitCalcModel(title: NSLocalizedString("Centimeter-candle", comment: "centimeterCandle title"),
                      unit: UnitIlluminance.centimeterCandle,
                      unitDescription: NSLocalizedString("A centimeter-candle (cm·cd) is a metric unit of illuminance and luminous emittance, measuring luminous flux per unit area. One centimeter-candle can be defined as a one-candela source illuminating a surface one centimeter away from the light source. One centimeter-candle is equal to 0.01 lumen per square meter: 1 cm·cd = 0.01 lx = 0.01 lm/m² = 0.01 cd·sr/m². The term “centimeter-candle” does not conform to SI standards for unit names and its use is discouraged.", comment: "centimeterCandle unit description")),
        UnitCalcModel(title: NSLocalizedString("Meter-candle", comment: "Meter-candle title"),
                      unit: UnitIlluminance.meterCandle,
                      unitDescription: NSLocalizedString("A meter-candle (m·cd) is a metric unit of illuminance and luminous emittance, measuring luminous flux per unit area. One meter-candle can be defined as illuminance of a one-candela source illuminating a surface one meter away from the light source. One meter-candle is equal to one lumen per square meter: 1 m·cd = 1 lx = 1 lm/m² = 1 cd·sr/m². The term “meter-candle” does not conform to SI standards for unit names and its use is discouraged.", comment: "meterCandle unit description")),
        UnitCalcModel(title: NSLocalizedString("Foot-candle", comment: "Foot-candle title"),
                      unit: UnitIlluminance.footCandle,
                      unitDescription: NSLocalizedString("A foot-candle (ft·c) is a US Customary and British Imperial unit of illuminance and luminous emittance, measuring luminous flux per unit area. One foot-candle can be defined as a one-candela source illuminating a surface one foot away from the light source.", comment: "foot-candle unit description")),
        UnitCalcModel(title: NSLocalizedString("Phot", comment: "phot title"),
                      unit: UnitIlluminance.phot,
                      unitDescription: NSLocalizedString("A phot (ph) is an obsolete CGS photometric unit of illuminance, or luminous flux through an area. 1 ph = 1 lm/cm² = 10,000 lm/m² - 10,000 lx = 10 klx", comment: "phot unit description") ),
        UnitCalcModel(title: NSLocalizedString("Nox", comment: "Nox title"),
                      unit: UnitIlluminance.nox,
                      unitDescription: NSLocalizedString("A nox (nx) is a non-SI photometric unit of illuminance, or luminous flux through an area. 1 nox = 1 millilux", comment: "nox unit description")),
        UnitCalcModel(title: NSLocalizedString("Candela steradian per square meter", comment: "candelaSteradianPerSquareMeter title"),
                      unit: UnitIlluminance.candelaSteradianPerSquareMeter,
                      unitDescription: NSLocalizedString("A candela steradian per square meter (cd·sr/m²) is the derived SI unit of illuminance and luminous emittance, measuring luminous flux per unit area and equal to 1 lux. One lux is equal to one lumen per square meter: 1 lx = 1 lm/m² = 1 cd·sr/m². If a light source emits one candela of luminous intensity uniformly across a solid angle of one steradian, the total luminous flux emitted into that angle is one lumen (1 cd·1 sr = 1 lm).", comment: "candelaSteradianPerSquareMeter unit description")),
        UnitCalcModel(title: NSLocalizedString("Lumen per square centimeter", comment: "lumenPerSquareCentimeter title"),
                      unit: UnitIlluminance.lumenPerSquareCentimeter,
                      unitDescription: NSLocalizedString("A lumen per square centimeter (lm/cm²) is the derived SI unit of illuminance and luminous emittance, measuring luminous flux per unit area and equal to 10,000 lux. 1 lm/cm² = 10,000 lx = 10,000 cd·sr/m². If a light source emits one candela of luminous intensity uniformly across a solid angle of one steradian, the total luminous flux emitted into that angle is one lumen (1 cd·1 sr = 1 lm).", comment: "lumenPerSquareCentimeter unit description")),
        UnitCalcModel(title: NSLocalizedString("Lumen per square meter", comment: "lumenPerSquareMeter title"),
                      unit: UnitIlluminance.lumenPerSquareMeter,
                      unitDescription: NSLocalizedString("A candela steradian per square meter (cd·sr/m²) is the derived SI unit of illuminance and luminous emittance, measuring luminous flux per unit area and equal to 1 lux. One lux is equal to one lumen per square meter: 1 lx = 1 lm/m² = 1 cd·sr/m². If a light source emits one candela of luminous intensity uniformly across a solid angle of one steradian, the total luminous flux emitted into that angle is one lumen (1 cd·1 sr = 1 lm).", comment: "lumenPerSquareMeter unit description")),
        UnitCalcModel(title: NSLocalizedString("Lumen per square foot", comment: "lumenPerSquareFoot title"),
                      unit: UnitIlluminance.lumenPerSquareFoot,
                      unitDescription: NSLocalizedString("A lumen per square foot (lm/ft²) is a US Customary and British Imperial unit of illuminance and luminous emittance, measuring luminous flux per unit area and equal to 10.76 lux.", comment: "lumenPerSquareFoot unit description")),
        UnitCalcModel(title: NSLocalizedString("Watt per square centimeter at 555 nm", comment: "wattPerSquareCentimeterAt555nm title"),
                      unit: UnitIlluminance.wattPerSquareCentimeterAt555nm,
                      unitDescription: NSLocalizedString("A watt per square centimeter at 555 nm (W/cm²) is the derived SI unit of illuminance and luminous emittance, measuring luminous flux per unit area and equal to 6,830,000 lux. The wavelength of 555 nanometers, which is in the middle of the visible-light spectrum, corresponds to the frequency of 540 terahertz.", comment: "wattPerSquareCentimeterAt555nm unit description")),
    ]
    
}
