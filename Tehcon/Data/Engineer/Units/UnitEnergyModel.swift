//
//  UnitEnergyModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitEnergyModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfEnergy
    var title = NSLocalizedString("Energy", comment: "UnitCalcModel")
    var icon = "battery.100.bolt"
    var typeDescription = NSLocalizedString("Energy is understood as the ability of a physical system to do work on other physical systems. Since work is defined as a force acting through a distance, energy is always equivalent to the ability to exert pulls or pushes against the basic forces of nature, along a path of a certain length. Energy is a scalar physical quantity.\n\nIn SI, energy and work are measured in joules, but in many fields units like kilowatt-hours and kilocalories are often used. The joule (J) is equal to the energy expended or work done in applying a force of one newton through a distance of one meter (1 newton meter or N·m). By another definition, the joule is equal to the energy required to pass an electric current of one ampere through a one ohm resistor for one second. Electrical energy is measured by electricity meters. Thermal energy is measured by heat meters.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Joules", comment: "joules title"),
                      unit: UnitEnergy.joules,
                      unitDescription: NSLocalizedString("A joule (J) is a derived unit of energy, work, and amount of heat in the International System of Units SI. The joule is equal to the energy expended or work done in applying a force of one newton through a distance of one meter (1 newton meter or N·m). By another definition, the joule is equal to the energy required to pass an electric current of one ampere through a one ohm resistor for one second. Yet another definition states that the joule is equal to the work required to move an electric charge of one coulomb through an electric potential difference of one volt. In everyday life, one joule of energy is required to lift a small (102 g) tomato one meter straight up.", comment: "joules description")),
        UnitCalcModel(title: NSLocalizedString("Microjoules", comment: "microjoule title"),
                      unit: UnitEnergy.microjoule,
                      unitDescription: NSLocalizedString("A microjoule (μJ) is a decimal fraction of the SI derived unit of energy, work, and amount of heat in the International System of Units SI. The joule is equal to the energy expended or work done in applying a force of one newton through a distance of one meter (1 newton meter or N·m). By another definition, the joule is equal to the energy required to pass an electric current of one ampere through a one ohm resistor for one second. Yet another definition states that the joule is equal to the work required to move an electric charge of one coulomb through an electric potential difference of one volt.", comment: "microjoule description")),
        UnitCalcModel(title: NSLocalizedString("Millijoules", comment: "millijoule title"),
                      unit: UnitEnergy.millijoule,
                      unitDescription: NSLocalizedString("A millijoule (mJ) is a decimal fraction of the SI derived unit of energy, work, and amount of heat in the International System of Units SI. The joule is equal to the energy expended or work done in applying a force of one newton through a distance of one meter (1 newton meter or N·m). By another definition, the joule is equal to the energy required to pass an electric current of one ampere through a one ohm resistor for one second. Yet another definition states that the joule is equal to the work required to move an electric charge of one coulomb through an electric potential difference of one volt.", comment: "millijoule description")),
        UnitCalcModel(title: NSLocalizedString("Kilojoules", comment: "kilojoules title"),
                      unit: UnitEnergy.kilojoules,
                      unitDescription: NSLocalizedString("A kilojoule (kJ) is a decimal multiple of the SI derived unit of energy, work, and amount of heat in the International System of Units SI. The joule is equal to the energy expended or work done in applying a force of one newton through a distance of one meter (1 newton meter or N·m). By another definition, the joule is equal to the energy required to pass an electric current of one ampere through a one ohm resistor for one second. Yet another definition states that the joule is equal to the work required to move an electric charge of one coulomb through an electric potential difference of one volt.", comment: "kilojoules description")),
        UnitCalcModel(title: NSLocalizedString("Megajoules", comment: "megajoule title"),
                      unit: UnitEnergy.megajoule,
                      unitDescription: NSLocalizedString("A megajoule (MJ) is a decimal multiple of the SI derived unit of energy, work, and amount of heat in the International System of Units SI. The joule is equal to the energy expended or work done in applying a force of one newton through a distance of one meter (1 newton meter or N·m). By another definition, the joule is equal to the energy required to pass an electric current of one ampere through a one ohm resistor for one second. Yet another definition states that the joule is equal to the work required to move an electric charge of one coulomb through an electric potential difference of one volt. The kinetic energy of a one-ton car moving at 160 km/h is approximately equal to one megajoule.", comment: "megajoule description")),
        UnitCalcModel(title: NSLocalizedString("Calories", comment: "calories title"),
                      unit: UnitEnergy.calories,
                      unitDescription: NSLocalizedString("A calorie (cal) is an outdated non-SI metric unit of energy. In most fields its use has been replaced by, the joule, the SI unit of energy. However, it remains a commonly used unit for energies in the field of chemistry. 1 th calorie = 4.184 J as defined in the ISO standard ISO 31-4. By definition, the small calorie or gram calorie approximates the energy needed to increase the temperature of 1 gram of water by 1 °C at standard atmospheric pressure (101.325 kPa).", comment: "calories description")),
        UnitCalcModel(title: NSLocalizedString("Kilocalories", comment: "kilocalories title"),
                      unit: UnitEnergy.kilocalories,
                      unitDescription: NSLocalizedString("A kilocalorie (kcal) is a decimal multiple of a thermochemical calorie, which is an outdated non-SI metric unit of energy. In most fields its use has been replaced by, the joule, the SI unit of energy. However, it remains a commonly used unit for energies in the field of chemistry. 1 th calorie = 4.184 J as defined in the ISO standard ISO 31-4. By definition, the small calorie or gram calorie approximates the energy needed to increase the temperature of 1 gram of water by 1 °C at standard atmospheric pressure (101.325 kPa).", comment: "kilocalories description")),
        UnitCalcModel(title: NSLocalizedString("Watt-hours", comment: "wattHours title"),
                      unit: UnitEnergy.watthour,
                      unitDescription: NSLocalizedString("The watt hour (also watt-hour, W·h or Wh) is a unit of energy equal to 3.6 kilojoules. One W·h is equivalent to one watt of constant power expended for one hour of time.", comment: "wattHours description")),
        UnitCalcModel(title: NSLocalizedString("Kilowatt-hours", comment: "kilowattHours title"),
                      unit: UnitEnergy.kilowattHours,
                      unitDescription: NSLocalizedString("The kilowatt hour (also kilowatt-hour, kW·h or kWh) is a unit of energy equal to 1000 watt hours or 3600 kilojoules. One kWh is equivalent to one kilowatt of constant power expended for one hour of time. This unit is often used as a billing unit for energy delivered to consumers by power generation companies.", comment: "kilowattHours description")),
        UnitCalcModel(title: NSLocalizedString("Megawatt-hours", comment: "MegawattHours title"),
                      unit: UnitEnergy.megawatthour,
                      unitDescription: NSLocalizedString("The megawatt hour (also megawatt-hour, MW·h or MWh) is a unit of energy equal to 10⁶ watt hours or 3600 megajoules. One MWh is equivalent to one megawatt of constant power expended for one hour of time. This unit is often used for metering large amounts of electrical energy supplied to industrial customers by power generation companies.", comment: "MegawattHours description")),
        UnitCalcModel(title: NSLocalizedString("Gigawatt-hours", comment: "GigawattHours title"),
                      unit: UnitEnergy.gigawatthour,
                      unitDescription: NSLocalizedString("The gigawatt hour (also gigawatt-hour, GW·h or GWh) is a unit of energy equal to 10⁹ watt hours or 3600 gigajoules. One GWh is equivalent to one gigawatt of constant power expended for one hour of time. This unit is often used for metering large amounts of electrical energy supplied to industrial customers by power generation companies.", comment: "GigawattHours description")),
        UnitCalcModel(title: NSLocalizedString("Watt-seconds", comment: "wattsecond title"),
                      unit: UnitEnergy.wattsecond,
                      unitDescription: NSLocalizedString("The watt second (also watt-second, W·s) is a unit of energy equal to 1 joule. One W·s is equivalent to one watt (1 W) of constant power expended for one second of time.", comment: "wattsecond description")),
        UnitCalcModel(title: NSLocalizedString("Kilowatt-seconds", comment: "kilowattsecond title"),
                      unit: UnitEnergy.kilowattSecond,
                      unitDescription: NSLocalizedString("The kilowatt second (also kilowatt-second, kW·s or kWs) is a unit of energy approximately equal to 0.28 watt hour or 1000 joules. One kWs is equivalent to one kilowatt of constant power expended for one second of time.", comment: "kilowattsecond description")),
        UnitCalcModel(title: NSLocalizedString("Horsepower-hour (metric)", comment: "horsepowerHour title"),
                      unit: UnitEnergy.horsepowerHour,
                      unitDescription: NSLocalizedString("A metric horsepower-hour (hp·h) is an outdated unit of energy, not used in the SI system of units. The unit represents an amount of work a horse is supposed capable of delivering during an hour. 1 metric hp·h = 2.65 MJ.", comment: "horsepowerHour description")),
        UnitCalcModel(title: NSLocalizedString("Electron-volts", comment: "electronVolt title"),
                      unit: UnitEnergy.electronVolt,
                      unitDescription: NSLocalizedString("An electronvolt (also electron volt, eV) is a non-SI unit of energy equal to approximately 1.6×10⁻¹⁹ joule and used in atomic, nuclear and particle physics. By definition, it is the amount of energy gained by the charge of an electron moved across an electric potential difference of one volt. In other words, an electronvolt is 1 volt (1 joule per coulomb) multiplied by the electron charge (1 e, or 1.602176565(35)×10⁻¹⁹ C). Electronvolt is a small value; therefore it is commonly used with the SI prefixes.", comment: "electronVolt description")),
        UnitCalcModel(title: NSLocalizedString("Kiloelectron-volts", comment: "kiloelectronVolt title"),
                      unit: UnitEnergy.kiloelectronVolt,
                      unitDescription: NSLocalizedString("A kiloelectronvolt (keV) is a decimal multiple of an electronvolt (electron volt, eV), which is a unit of energy equal to approximately 1.6×10⁻¹⁹ joule and used in atomic, nuclear and particle physics. By definition, it is the amount of energy gained by the charge of an electron moved across an electric potential difference of one volt. In other words, an electronvolt is 1 volt (1 joule per coulomb) multiplied by the electron charge (1 e, or 1.602176565(35)×10⁻¹⁹ C). Electronvolt is a small value; therefore it is commonly used with the SI prefixes.", comment: "kiloelectronVolt description")),
        UnitCalcModel(title: NSLocalizedString("Megalectron-volts", comment: "Megalectronvolts title"),
                      unit: UnitEnergy.megaelectronVolt,
                      unitDescription: NSLocalizedString("A megaelectronvolt (MeV) is a decimal multiple of an electronvolt (electron volt, eV), which is a unit of energy equal to approximately 1.6×10⁻¹⁹ joule and used in atomic, nuclear and particle physics. By definition, it is the amount of energy gained by the charge of an electron moved across an electric potential difference of one volt. In other words, an electronvolt is 1 volt (1 joule per coulomb) multiplied by the electron charge (1 e, or 1.602176565(35)×10⁻¹⁹ C). Electronvolt is a small value; therefore it is commonly used with the SI prefixes.", comment: "Megalectronvolts description")),
        UnitCalcModel(title: NSLocalizedString("Newton meters", comment: "newtonMeter title"),
                      unit: UnitEnergy.newtonMeter,
                      unitDescription: NSLocalizedString("The newton meter (N·m) is a unit of energy equivalent to 1 joule. It is equal to the energy expended or work done in applying a force of one newton through a distance of one meter. One newton meter of energy is required to lift a small (102 g) tomato one meter straight up.", comment: "newtonMeter description")),
        UnitCalcModel(title: NSLocalizedString("Tons (TNT)", comment: "tonExplosives title"),
                      unit: UnitEnergy.tonExplosives,
                      unitDescription: NSLocalizedString("The ton or tonne of Trinitrotoluene (TNT) is a unit of energy equal to 4.184 gigajoules, which is approximately the amount of energy released in the detonation of one ton of TNT. The kiloton and megaton of TNT have traditionally been used to rate the destructive power of nuclear weapons. The megaton of TNT is a unit of energy equal to 4.184 petajoules.", comment: "tonExplosives description")),
        UnitCalcModel(title: NSLocalizedString("Kilotons (TNT)", comment: "KilotonsExplosives title"),
                      unit: UnitEnergy.kilotonExplosives,
                      unitDescription: NSLocalizedString("The kiloton of Trinitrotoluene (TNT) is a decimal multiple of the ton of TNT, which is a unit of energy equal to 4.184 gigajoules. This is approximately the amount of energy released in the detonation of one ton of TNT. The kiloton of TNT is a unit of energy equal to 4.184 terajoules. The kiloton and megaton of TNT have traditionally been used to rate the destructive power of nuclear weapons.", comment: "KilotonsExplosives description")),
        UnitCalcModel(title: NSLocalizedString("Megatons (TNT)", comment: "megatonExplosives title"),
                      unit: UnitEnergy.megatonExplosives,
                      unitDescription: NSLocalizedString("The megaton of Trinitrotoluene (TNT) is a decimal multiple of the ton of TNT, which is a unit of energy equal to 4.184 gigajoules. This is approximately the amount of energy released in the detonation of one ton of TNT. The megaton of TNT is a unit of energy equal to 4.184 petajoules. The kiloton and megaton of TNT have traditionally been used to rate the destructive power of nuclear weapons.", comment: "megatonExplosives description")),
        UnitCalcModel(title: NSLocalizedString("Gigatons (TNT)", comment: "gigatonExplosives title"),
                      unit: UnitEnergy.gigatonExplosives,
                      unitDescription: NSLocalizedString("The gigaton of Trinitrotoluene (TNT) is a decimal multiple of the ton of TNT, which is a unit of energy equal to 4.184 gigajoules. TNT equivalent is a method of quantifying the energy released in explosions or during large bolide impacts. This is approximately the amount of energy released in the detonation of one ton of TNT. The gigaton of TNT is a unit of energy equal to 4.184 exajoules. The kiloton and megaton of TNT have traditionally been used to rate the destructive power of nuclear weapons.", comment: "gigatonExplosives description")),
        UnitCalcModel(title: NSLocalizedString("Dyne centimeters", comment: "dyneCentimeter title"),
                      unit: UnitEnergy.dyneCentimeter,
                      unitDescription: NSLocalizedString("A dyne centimeter (dyne·cm) is a unit of energy and mechanical work in the centimeter-gram-second (CGS) system of units, which is equal to one erg. It is the amount of work done by a force of one dyne when moving an object through a distance of one centimeter. In the CGS base units, it is equal to one gram centimeter squared per second squared (g·cm²/s²). It is thus equal to 100 nanojoules (nJ) in SI units. A dyne centimeter is a very small unit of energy. The impact energy of a small mosquito flying into a wall is equal to about 1 dyne centimeter.", comment: "dyneCentimeter description")),
        UnitCalcModel(title: NSLocalizedString("Kilopond meters", comment: "kilopondMeter title"),
                      unit: UnitEnergy.kilopondMeter,
                      unitDescription: NSLocalizedString("A kilopond meter (kp·m) is a unit of energy and mechanical work, which is equal to 1 kgf·m or 9.81 joules in SI units. It is the amount of work done by a force of one kilogram-force when moving an object through a distance of one meter.", comment: "kilopondMeter description")),
        UnitCalcModel(title: NSLocalizedString("Pound-force inches", comment: "poundforceInches title"),
                      unit: UnitEnergy.poundforceInches,
                      unitDescription: NSLocalizedString("A pound-force inch (lbf ·in) is a unit of energy and mechanical work, which is equal 0.113 joules in SI units. It is the amount of work done by a force of one pound-force when moving an object through a distance of one inch.", comment: "poundforceInches description")),
        UnitCalcModel(title: NSLocalizedString("Pound-force foots", comment: "poundforceFeets title"),
                      unit: UnitEnergy.poundforceFeets,
                      unitDescription: NSLocalizedString("A pound-force foot (lbf·ft) is the Imperial unit of energy and mechanical work, which is equal 1.36 joules in SI units. It is the amount of work done by a force of one pound-force when moving an object through a distance of one foot.", comment: "poundforceFeets description")),
        UnitCalcModel(title: NSLocalizedString("Ounce-force inches", comment: "ounceforceInches title"),
                      unit: UnitEnergy.ounceforceInches,
                      unitDescription: NSLocalizedString("A ounce-force inch (ozf ·in) is a unit of energy and mechanical work, which is equal 7.062 millijoules in SI units. It is the amount of work done by a force of one ounce-force when moving an object through a distance of one inch.", comment: "ounceforceInches description")),
        UnitCalcModel(title: NSLocalizedString("Inch-pounds", comment: "inchPounds title"),
                      unit: UnitEnergy.inchPounds,
                      unitDescription: NSLocalizedString("A inch-pound (in·lb), or inch-pound force (symbol: in·lbf) is a unit of work or energy in the Engineering and Gravitational Systems in United States customary and imperial units of measure. It is the amount of work done by a force of one pound-force when moving an object through a distance of one inch. 1 in·lbf ≈ 0.113 joules in SI units.", comment: "inchPounds description")),
        UnitCalcModel(title: NSLocalizedString("Foot-pounds", comment: "FootPounds title"),
                      unit: UnitEnergy.footPounds,
                      unitDescription: NSLocalizedString("A foot-pound (ft·lb), or foot-pound force (ft·lbf) is a unit of work or energy in the Engineering and Gravitational Systems in United States customary and imperial units of measure. It is the amount of work done by a force of one pound-force when moving an object through a distance of one foot. 1 ft·lbf ≈ 1.36 joules in SI units. The foot-pound is used in the US to specify the muzzle energy of bullets in small arms ballistics.", comment: "FootPounds description")),
        UnitCalcModel(title: NSLocalizedString("Inch-ounces", comment: "inchOunces title"),
                      unit: UnitEnergy.inchOunces,
                      unitDescription: NSLocalizedString("A inch-ounce (in·oz), or inch-ounce force (symbol: in·ozf) is a unit of work or energy in United States customary and imperial units of measure. It is the amount of work done by a force of one ounce-force when moving an object through a distance of one inch. 1 in·oz ≈ 7.06 millijoules in SI units.", comment: "inchOunces description")),
        UnitCalcModel(title: NSLocalizedString("Poundal-foots", comment: "poundalFoots title"),
                      unit: UnitEnergy.poundalFoots,
                      unitDescription: NSLocalizedString("A poundal foot (pdl·ft) is a unit of energy in United States customary and imperial units of measure. It is the amount of work done by a force of one poundal when moving an object through a distance of one foot. It is equal to 42.14 millijoules in SI units. The poundal (pdl) is a unit of force that is part of the foot-pound-second system of units. 1 pdl ≈ 0.138254 N", comment: "poundalFoots description")),
        UnitCalcModel(title: NSLocalizedString("Therms (EU)", comment: "thermEU title"),
                      unit: UnitEnergy.thermEU,
                      unitDescription: NSLocalizedString("An EC therm (thm EC) is a non-SI unit of heat energy equal to 100,000 international British thermal units (BTU IT) used in the European Union. It is approximately the energy equivalent of burning 100 cubic feet of natural gas. Since meters measure volume and not energy content, a therm factor is used by gas utility companies to convert the volume of gas consumed to its heat equivalent, and thus calculate the actual energy use.", comment: "thermEU description")),
        UnitCalcModel(title: NSLocalizedString("Therms (US)", comment: "thermUS title"),
                      unit: UnitEnergy.thermUS,
                      unitDescription: NSLocalizedString("An US therm (thm US) is a non-SI unit of heat energy equal to 100,000 British thermal units used in the United States (BTU at 59°F). It is approximately the energy equivalent of burning 100 cubic feet of natural gas. Since meters measure volume and not energy content, a therm factor is used by gas utility companies to convert the volume of gas consumed to its heat equivalent, and thus calculate the actual energy use.", comment: "thermUS description")),
        UnitCalcModel(title: NSLocalizedString("Hartree energy", comment: "hartreeEnergy title"),
                      unit: UnitEnergy.hartreeEnergy,
                      unitDescription: NSLocalizedString("A Hartree energy (Eh or Ha), also known as the hartree, is the atomic unit of energy. It is named after the British physicist Douglas Hartree and used as a unit of energy in atomic physics and computational chemistry. The Hartree energy is approximately the electric potential energy of the hydrogen atom in its ground state. Eh = 4.359 744 34(19)×10⁻¹⁸ J = 27.211 385 05(60) eV.", comment: "hartreeEnergy description")),
    ]
}
