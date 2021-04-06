//
//  UnitElectricChargeModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitElectricChargeModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfElectricCharge
    var title = NSLocalizedString("Electric charge", comment: "UnitCalcModel")
    var icon = "bolt.circle"
    var typeDescription = NSLocalizedString("Electric charge is a fundamental conserved property of some subatomic particles, which determines their electromagnetic interaction. The electrically charged matter is influenced by and produces electromagnetic fields. The interaction between a moving charge and an electromagnetic field is the source of the electromagnetic force.\n\nThe SI unit of the quantity of electric charge is the coulomb (С), which is equivalent to about 6.242×1018·e (e is the charge of a proton).", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Coulombs", comment: "Coulombs title"),
                      unit: UnitElectricCharge.coulombs,
                      unitDescription: NSLocalizedString("A coulomb (C) is the SI derived unit of electric charge. It is defined as the charge transported by a steady current of one ampere in one second. The coulomb can also be defined in terms of capacitance. One coulomb is the amount of charge on the positive side of a capacitor of one farad charged to a potential difference of one volt.", comment: "Coulombs unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Microampere-hours", comment: "Microampere-hours title"),
                      unit: UnitElectricCharge.microampereHours,
                      unitDescription: NSLocalizedString("The Microampere Hours is a measurement unit of Electric Charge, but it is a non-SI unit. The unit symbol of Microampere Hours is µAh, 1 Microampere Hours is equal to 0.0036 Coulombs.", comment: "Microampere-hours title")),
        UnitCalcModel(title: NSLocalizedString("Milliampere-hours", comment: "Milliampere-hours unitDescription"),
                      unit: UnitElectricCharge.milliampereHours,
                      unitDescription: NSLocalizedString("A milliampere hour (symbol mAh or mA⋅h, mA h) is a non-SI unit of electric charge. The milliampere hour is one-thousandth of an ampere-hour (3.6 coulombs). This unit is commonly used in the measurement of the capacity of electric batteries.", comment: "Milliampere-hours unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ampere-hours", comment: "Ampere-hours title"),
                      unit: UnitElectricCharge.ampereHours,
                      unitDescription: NSLocalizedString("An ampere-hour or amp-hour (symbol Ah, AHr, A·h, A h) is a non-SI unit of electric charge. One ampere-hour is equal to 3600 coulombs (ampere-seconds). Physical interpretation: One ampere-hour is the electric charge transferred by a steady current of one ampere for one hour. This unit is commonly used in the measurement of the capacity of electric batteries.", comment: "Ampere-hours unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kiloampere-hours", comment: "Kiloampere-hours title"),
                      unit: UnitElectricCharge.kiloampereHours,
                      unitDescription: NSLocalizedString("The Kiloampere Hours is a measurement unit of Electric Charge, but it is a non-SI unit. The unit symbol of Kiloampere Hours is kAh, 1 Kiloampere Hours is equal to 3600000 Coulombs.", comment: "Kiloampere-hours unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Megaampere-hours", comment: "Megaampere-hours title"),
                      unit: UnitElectricCharge.megaampereHours,
                      unitDescription: NSLocalizedString("The Megaampere Hours is a measurement unit of Electric Charge, but it is a non-SI unit. The unit symbol of Megaampere Hours is MAh, 1 Megaampere Hours is equal to 3600000000 Coulombs.", comment: "Megaampere-hours unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ampere-minutes", comment: "Ampere-minutes title"),
                      unit: UnitElectricCharge.ampereminutes,
                      unitDescription: NSLocalizedString("An ampere-minute or amp-minute is a non-SI unit of electric charge. One ampere-minute is equal to 60 coulombs (ampere-seconds). Physical interpretation: One ampere-minute is the electric charge transferred by a steady current of one ampere for one minute.", comment: "Ampere-minutes unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ampere-seconds", comment: "Ampere-seconds title"),
                      unit: UnitElectricCharge.ampereseconds,
                      unitDescription: NSLocalizedString("An ampere-second or amp-second is a non-SI unit of electric charge. One ampere-second is equal to 1 coulomb. Physical interpretation: One ampere-second is the electric charge transferred by a steady current of one ampere for one second.", comment: "Ampere-seconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Faradays", comment: "Faradays title"),
                      unit: UnitElectricCharge.faraday,
                      unitDescription: NSLocalizedString("A faraday is a non-SI unit of electrical charge. It is used in electrochemistry. One faraday of charge is the magnitude of the charge of one mole of electrons, that is, 96.48 kC.", comment: "Faradays unitDescription")),
    ]
}
