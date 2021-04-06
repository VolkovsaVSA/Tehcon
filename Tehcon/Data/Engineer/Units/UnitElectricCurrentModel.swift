//
//  UnitElectricCurrentModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitElectricCurrentModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfElectricCurrent
    var title = NSLocalizedString("Electric current", comment: "UnitCalcModel")
    var icon = "bolt.badge.a"
    var typeDescription = NSLocalizedString("Electric current is a flow of electric charge through a conductive medium. In electric circuits this charge is often carried by moving electrons in a wire. It can also be carried by ions in an electrolyte, or by both ions and electrons such as in a plasma.\n\nThe SI unit for measuring the rate of flow of electric charge is the ampere, which is defined by taking the fixed numerical value of the elementary charge e to be 1.602176634×10⁻¹⁹ when expressed in the unit C, which is equal to A⋅s.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Amperes", comment: "Amperes title"),
                      unit: UnitElectricCurrent.amperes,
                      unitDescription: NSLocalizedString("The ampere, often shortened to amp, is the base unit of electric current in the International System of Units (SI). It is named after André-Marie Ampère (1775–1836), a French mathematician and physicist, considered the father of electromagnetism. The International System of Units defines the ampere in terms of other base units by measuring the electromagnetic force between electrical conductors carrying electric current. The earlier CGS system had two different definitions of current, one essentially the same as the SI's and the other using electric charge as the base unit, with the unit of charge defined by measuring the force between two charged metal plates. The ampere was then defined as one coulomb of charge per second. In SI, the unit of charge, the coulomb, is defined as the charge carried by one ampere during one second.", comment: "Amperes title")),
        UnitCalcModel(title: NSLocalizedString("Microamperes", comment: "Microamperes title"),
                      unit: UnitElectricCurrent.microamperes,
                      unitDescription: NSLocalizedString("A microampere (µA), is a decimal fraction of the ampere, the SI unit of electric current.", comment: "Microamperes unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milliamperes", comment: "Milliamperes title"),
                      unit: UnitElectricCurrent.milliamperes,
                      unitDescription: NSLocalizedString("A milliampere (mA), is a decimal fraction of the ampere, the SI unit of electric current.", comment: "Milliamperes unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kiloamperes", comment: "Kiloamperes title"),
                      unit: UnitElectricCurrent.kiloamperes,
                      unitDescription: NSLocalizedString("A kiloampere (kA), is a decimal multiple of the ampere, the SI unit of electric current.", comment: "Kiloamperes unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Megaamperes", comment: "Megaamperes title"),
                      unit: UnitElectricCurrent.megaamperes,
                      unitDescription: NSLocalizedString("A megaampere (kA), is a decimal multiple of the ampere, the SI unit of electric current.", comment: "Megaamperes unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Biot", comment: "Biot title"),
                      unit: UnitElectricCurrent.biot,
                      unitDescription: NSLocalizedString("A biot is another name for the abampere (aA), which is the basic electromagnetic unit of electric current in the emu-cgs (centimeter-gram-second) system of units. It is called after the French physicist, astronomer, and mathematician Jean-Baptiste Biot. One abampere is equal to ten amperes in the SI system of units. One abampere is the current, which produces a force of 2 dyne/cm between two infinitely long parallel wires that are 1 cm apart.", comment: "Biot unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Statampere", comment: "Statampere title"),
                      unit: UnitElectricCurrent.statampere,
                      unitDescription: NSLocalizedString("A statampere (statA, A-esu) is a unit of electric current in the cgs (centimeter-gram-second) system of electrostatic units (esu). It is the equivalent of one statcoulomb (1 statC) of charge moving past a specific point in one second.", comment: "Statampere unitDescription")),
    ]
}
