//
//  UnitElectricPotentialDifferenceModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitElectricPotentialDifferenceModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfElectricPotentialDifference
    var title = NSLocalizedString("Electric potential difference", comment: "UnitCalcModel")
    var icon = "minus.plus.batteryblock"
    var typeDescription = NSLocalizedString("The electric potential is a scalar quantity of an electric field that is equal to the electric potential energy of a charged particle at a point divided by the charge of the particle. It is also called the electric field potential or electrostatic potential. Voltage, also known as electric tension, is the electric potential difference between two points — or the difference in electric potential energy of a unit charge transported between two points. Voltage is measured in units of electric potential: volts, or joules per coulomb.\n\nIn SI, the electric potential is measured in joules per coulomb, or volts.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Volts", comment: "Volts title"),
                      unit: UnitElectricPotentialDifference.volts,
                      unitDescription: NSLocalizedString("A volt (V) is the SI derived unit for electromotive force, electric potential (voltage), and electric potential difference. By definition, one volt is the difference in electric potential across a wire when an electric current of one ampere dissipates one watt of power. It is also equal to the potential difference between two parallel, infinite planes spaced one meter apart that create an electric field of one newton per coulomb.", comment: "Volts unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Microvolts", comment: "Microvolts title"),
                      unit: UnitElectricPotentialDifference.microvolts,
                      unitDescription: NSLocalizedString("A microvolt (µV) is a decimal fraction of the SI derived unit for electromotive force, electric potential (voltage), and electric potential difference. 1 µV = 0.000001 V. By definition, one volt is the difference in electric potential across a wire when an electric current of one ampere dissipates one watt of power. It is also equal to the potential difference between two parallel, infinite planes spaced one meter apart that create an electric field of one newton per coulomb.", comment: "Microvolts unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Millivolts", comment: "Millivolts title"),
                      unit: UnitElectricPotentialDifference.millivolts,
                      unitDescription: NSLocalizedString("A millivolt (mV) is a decimal fraction of the SI derived unit for electromotive force, electric potential (voltage), and electric potential difference. 1 mV = 0.001 V. By definition, one volt is the difference in electric potential across a wire when an electric current of one ampere dissipates one watt of power. It is also equal to the potential difference between two parallel, infinite planes spaced one meter apart that create an electric field of one newton per coulomb.", comment: "Millivolts unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kilovolts", comment: "Kilovolts title"),
                      unit: UnitElectricPotentialDifference.kilovolts,
                      unitDescription: NSLocalizedString("A kilovolt (kV) is a decimal multiple of the SI derived unit for electromotive force, electric potential (voltage), and electric potential difference. 1 kV = 1000 V. By definition, one volt is the difference in electric potential across a wire when an electric current of one ampere dissipates one watt of power. It is also equal to the potential difference between two parallel, infinite planes spaced one meter apart that create an electric field of one newton per coulomb.", comment: "Kilovolts unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Megavolts", comment: "Megavolts title"),
                      unit: UnitElectricPotentialDifference.megavolts,
                      unitDescription: NSLocalizedString("A megavolt (MV) is a decimal multiple of the SI derived unit for electromotive force, electric potential (voltage), and electric potential difference. 1 MV = 10⁶ V. By definition, one volt is the difference in electric potential across a wire when an electric current of one ampere dissipates one watt of power. It is also equal to the potential difference between two parallel, infinite planes spaced one meter apart that create an electric field of one newton per coulomb.", comment: "Megavolts unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Abvolt", comment: "Abvolt title"),
                      unit: UnitElectricPotentialDifference.abvolt,
                      unitDescription: NSLocalizedString("An abvolt (abV) is the unit of electric potential (voltage), electric potential difference, and electromotive force in the cgs (centimeter-gram-second) electromagnetic system of units. 1 abV is equal to 10⁻⁸ volts. A potential difference of one abV will drive a current of one abampere through a resistance of one abohm. One erg of energy is needed to move one abcoulomb of charge between the two points having the potential difference of one abvolt.", comment: "Abvolt unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Statvolt", comment: "Statvolt title"),
                      unit: UnitElectricPotentialDifference.statvolt,
                      unitDescription: NSLocalizedString("A statvolt is the unit of electric potential (voltage), electric potential difference, and electromotive force in the cgs (centimeter-gram-second) electrostatic system of units. 1 statvolt = 299.79 volts. A potential difference of one statV will drive a current of one statampere through a resistance of one statohm. The statvolt is a large unit, therefore electrical engineers and electricians prefer using the SI unit volt instead.", comment: "Statvolt unitDescription")),
    ]
}
