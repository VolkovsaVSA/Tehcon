//
//  UnitElectricResistanceModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitElectricResistanceModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfElectricResistance
    var title = NSLocalizedString("Electric resistance", comment: "UnitCalcModel")
    var icon = "bolt.slash"
    var typeDescription = NSLocalizedString("The electrical resistance of a circuit component is the opposition to the passage of an electric current through that component.\n\nThe SI unit of electrical resistance is the ohm (Ω), while electrical conductance is measured in siemens (S). The ohm is defined as a resistance between two points of a conductor when a constant potential difference of 1 volt applied to these points produces a current of 1 ampere.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Ohms", comment: "Ohms title"),
                      unit: UnitElectricResistance.ohms,
                      unitDescription: NSLocalizedString("An ohm (Ω) is the SI derived unit of electrical resistance. By definition, a conductor has an electrical resistance of one ohm when a constant potential difference of one volt applied between its ends produces in this conductor a current of one ampere. Passive two-terminal electrical components called resistors are used to implement electrical resistance in various electronic devices. Resistance can be measured by a multimeter, which can also measure voltage, current, and sometimes temperature, capacitance and other values.", comment: "Ohms unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Microohms", comment: "Microohms title"),
                      unit: UnitElectricResistance.microohms,
                      unitDescription: NSLocalizedString("A microohm (μΩ) is a decimal fraction of the SI derived unit ohm and is equal to 10⁻⁶ Ω. Note that the final vowel in the SI prefix micro is omitted. A conductor has an electrical resistance of one microhm when a constant potential difference of one kilovolt applied between its ends produces in this conductor a current of one kiloampere. A microhm is an extremely small resistance and this unit is seldom used. Extremely small resistances are usually referred to in terms of conductance.", comment: "Microohms unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milliohms", comment: "Milliohms title"),
                      unit: UnitElectricResistance.milliohms,
                      unitDescription: NSLocalizedString("A milliohm (mΩ) is a decimal fraction of the SI derived unit ohm and is equal to 0.001 Ω. A conductor has an electrical resistance of one milliohm when a constant potential difference of one volt applied between its ends produces in this conductor a current of one kiloampere. Many electronic components have low resistance usually measured in milliohms. Some examples of low-resistance components are wires, switches, relay contacts, chokes, transformers, and coils. Their resistance is often less than 1 ohm. It can be measured by a milliohmmeter, a special type of ohmmeter used to precisely measure low resistance in a measuring range starting from 0.001mΩ.", comment: "Milliohms unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kiloohms", comment: "kiloohms title"),
                      unit: UnitElectricResistance.kiloohms,
                      unitDescription: NSLocalizedString("A kiloohm (kΩ) or kilohm is a decimal multiple of the SI derived unit ohm and is equal to 1000 Ω. A conductor has an electrical resistance of one milliohm when a constant potential difference of one volt applied between its ends produces in this conductor a current of one milliampere. Many electronic components have resistance usually measured in kiloohms. Some examples of components whose resistance is measured in kiloohms are resistors, potentiometers, multi-turn coils, input and output resistance of various electronic circuits. Resistance can be measured by a multimeter, which can also measure voltage, current, and sometimes temperature, capacitance and other values.", comment: "kiloohms unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Megaohms", comment: "megaohms title"),
                      unit: UnitElectricResistance.megaohms,
                      unitDescription: NSLocalizedString("A megaohm (MΩ) is a decimal multiple of the SI derived unit ohm and is equal to 1,000,000 Ω. Note that the final vowel in the SI prefix mega is omitted. A conductor has an electrical resistance of one megaohm when a constant potential difference of one volt applied between its ends produces in this conductor a current of one microampere. Passive two-terminal electrical components called resistors are used to implement electrical resistance in various electronic devices. Resistance of insulators is usually more than 100 megaohms. It can be measured by a megaohmmeter, a special type of ohmmeter used to measure or test the insulation resistance of insulators.", comment: "megaohms unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Abohm", comment: "abohm title"),
                      unit: UnitElectricResistance.abohm,
                      unitDescription: NSLocalizedString("An abohm (abΩ) is the basic unit of electrical resistance in the emu-cgs system of units (electromagnetic centimeter-gram-second system of units). A potential difference of one abvolt will drive a current of one abampere through a resistance of one abohm. One abohm is equal to 10⁻⁹ ohms = 1 nanoohm in the SI system of units. An abohm is an extremely small resistance and this unit is almost never used. Extremely small resistances are usually referred to in terms of conductance.", comment: "abohm unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Statohm", comment: "statohm title"),
                      unit: UnitElectricResistance.statohm,
                      unitDescription: NSLocalizedString("A statohm (statΩ) is the basic unit of electrical resistance in the esu-cgs system of units (electrostatic centimeter-gram-second system of units). A potential difference of one statV will drive a current of one statampere through a resistance of one statohm. The statohm is an extremely large unit; 1 statΩ ≈ 900 GΩ in the SI system of units. Therefore electrical engineers and electricians prefer using the SI unit ohm instead.", comment: "statohm unitDescription")),
    ]
}
