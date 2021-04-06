//
//  UnitTemperatureModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitTemperatureModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfTemperature
    var title = NSLocalizedString("Temperature", comment: "UnitCalcModel")
    var icon = "thermometer"
    var typeDescription = NSLocalizedString("Temperature is a scalar physical quantity describing how quickly molecules are moving inside materials. In liquids and solids, the molecules are vibrating around a fixed point in the substance. In gases, however, they are free and bouncing off each other as they travel. If the path of heat transfer between cold and hot bodies is open, heat flows spontaneously from higher temperature bodies to lower temperature bodies. This flow rate increases with the temperature difference. At the same time, if two bodies have the same temperature, no heat exchange occurs between them. Such bodies are said to be in a thermal equilibrium state. The zeroth law of thermodynamics states that if two systems are in thermal equilibrium with a third system, they are also in thermal equilibrium with each other. The temperatures are equal for all systems in thermal equilibrium. This allows to make a thermometer to measure the temperature of the medium in which it is immersed.\n\nIn the International System of Units (SI), the temperature is measured in kelvin. It is one of the seven base units in the system. The Kelvin scale is an absolute temperature scale using as its null point absolute zero.", comment: "UnitTemperature type description")
    var units: [UnitCalcModel] = [
        
        UnitCalcModel(title: NSLocalizedString("Kelvin", comment: "kelvin title"),
                      unit: UnitTemperature.kelvin,
                      unitDescription: NSLocalizedString("The Kelvin temperature scale is used in the International System of Units (SI), to measure the temperature. Kelvin is one of the seven base units in the system. The Kelvin scale is an absolute temperature scale using as its null point absolute zero.", comment: "kelvin description")),
        UnitCalcModel(title: NSLocalizedString("Celsius", comment: "celsius title"),
                      unit: UnitTemperature.celsius,
                      unitDescription: NSLocalizedString("The Celsius scale (°C) is used for most temperature measurements and is included in SI as a derived unit of temperature. It has the same incremental scaling as the Kelvin scale used by scientists, but fixes its null point, at 0°C = 273.15 K, approximately the freezing point of water.", comment: "celsius description")),
        UnitCalcModel(title: NSLocalizedString("Fahrenheit", comment: "fahrenheit title"),
                      unit: UnitTemperature.fahrenheit,
                      unitDescription: NSLocalizedString("Within the Fahrenheit scale (°F), the water freezing temperature is defined at 32 degrees, while the boiling point of water is defined to be 212 degrees at standard atmospheric pressure. A degree on the Fahrenheit scale is 1⁄180 of the interval between the freezing point and the boiling point of water.", comment: "fahrenheit description")),
        UnitCalcModel(title: NSLocalizedString("Rankine", comment: "rankine title"),
                      unit: UnitTemperature.rankine,
                      unitDescription: NSLocalizedString("In Rankine scale (°R) zero is absolute zero. However, unlike the Kelvin scale, the Rankine degree is defined as equal to one degree Fahrenheit, rather than the one degree Celsius used by the Kelvin scale. A temperature of −459.67 °F is exactly equal to 0 °R. The Rankine scale is used for thermodynamic calculations.", comment: "rankine description")),
        UnitCalcModel(title: NSLocalizedString("Réaumur", comment: "reaumur title"),
                      unit: UnitTemperature.reaumur,
                      unitDescription: NSLocalizedString("The Réaumur scale (°Re, °Ré, °R) is an obsolete temperature scale in which the boiling and freezing points of water are set to 80 and 0 degrees respectively. The Réaumur scale was widespread in Europe during the eighteenth century, particularly in France and Germany as well as Russia. By the 1790s, France switched to the Celsius scale for the metric system over the Réaumur measurements. In modern days it is used only in the measuring of milk temperature in cheese production.", comment: "reaumur description")),
        
    ]
}
