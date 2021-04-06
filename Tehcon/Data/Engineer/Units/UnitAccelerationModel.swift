//
//  UnitAccelerationModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitAccelerationModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfAcceleration
    var title = NSLocalizedString("Acceleration", comment: "UnitCalcModel")
    var icon = "hare"
    var typeDescription = NSLocalizedString("Acceleration is the rate of change of the velocity of a body with time. Velocity and acceleration are vector quantities, with magnitude and direction. However, in many cases, only magnitude is considered. Acceleration is accompanied by a force, as described by Newton’s Second Law; the force, as a vector, is the product of the mass of the object being accelerated and the acceleration (vector).\n\nThe SI unit of acceleration is the meter per second squared, m/s².", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Meters per second squared", comment: "metersPerSecondSquared title"),
                      unit: UnitAcceleration.metersPerSecondSquared,
                      unitDescription: NSLocalizedString("A meter per second squared is a unit of measurement for acceleration in the International System of Units (SI). It is a derived unit of the SI and it is composed of the SI base units, the meter and the second. Physical interpretation: if an object accelerates at 1 m/s², its speed is increasing by 1 m/s every second.", comment: "metersPerSecondSquared unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Kilometers per second squared", comment: "kilometerPerSecondSquared title"),
                      unit: UnitAcceleration.kilometerPerSecondSquared,
                      unitDescription: NSLocalizedString("A kilometer per second squared is a unit of acceleration in the International System of Units (SI), equal to 1000 m/s². Physical interpretation: if an object accelerates at 1 km/s², its speed is increasing by 1 km/s every second.", comment: "kilometerPerSecondSquared unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Millimeters per second squared", comment: "millimeterPerSecondSquared title"),
                      unit: UnitAcceleration.millimeterPerSecondSquared,
                      unitDescription: NSLocalizedString("A millimeter per second squared is a unit of acceleration in the International System of Units (SI), equal to 0.001 m/s². Physical interpretation: if an object accelerates at 1 mm/s², its speed is increasing by 1 mm/s every second.", comment: "millimeterPerSecondSquared unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Yard per second squared", comment: "yardPerSecondSquared title"),
                      unit: UnitAcceleration.yardPerSecondSquared,
                      unitDescription: NSLocalizedString("A yard per second squared is a unit of acceleration in the British (Imperial) and US customary systems, equal to 0.9144 m/s². Physical interpretation: if an object accelerates at 1 yd/s², its speed is increasing by 1 yd/s every second.", comment: "yardPerSecondSquared unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Foot per second squared", comment: "feetPerSecondSquared title"),
                      unit: UnitAcceleration.feetPerSecondSquared,
                      unitDescription: NSLocalizedString("A foot per second squared is a unit of acceleration in the British (Imperial) and US customary systems, equal to 0.3048 m/s². Physical interpretation: if an object accelerates at 1 ft/s², its speed is increasing by 1 ft/s every second.", comment: "feetPerSecondSquared unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Inches per second squared", comment: "inchPerSecondSquared title"),
                      unit: UnitAcceleration.inchPerSecondSquared,
                      unitDescription: NSLocalizedString("An inch per second squared is a unit of acceleration in the British (Imperial) and US customary systems, equal to 0.0254 m/s². Physical interpretation: if an object accelerates at 1 in/s², its speed is increasing by 1 in/s every second.", comment: "inchPerSecondSquared unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gravity", comment: "gravity title"),
                      unit: UnitAcceleration.gravity,
                      unitDescription: NSLocalizedString("The gravity of Earth, which is denoted by g, refers to the acceleration that the Earth imparts to objects on or near its surface. In SI units this acceleration is measured in meters per second squared (in symbols, m/s²) or equivalently in newtons per kilogram (N/kg). It has an approximate value of 9.81 m/s², which means that ignoring the effects of air resistance, the speed of an object falling freely near the Earth's surface will increase by about 9.81 meters (32.2 ft) per second every second. This quantity is sometimes referred to informally as little g (in contrast, the gravitational constant G is referred to as big G).", comment: "gravity unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gal", comment: "gal title"),
                      unit: UnitAcceleration.gal,
                      unitDescription: NSLocalizedString("A gal, which is sometimes called galileo, is a unit of acceleration used in gravimetry. It is named after the Italian physicist Galileo Galilei who made the first measurement of the Earth’s gravity. The gal is defined as 1 centimeter per second squared. Physical interpretation: if an object accelerates at 1 Gal, its speed is increasing by 1 cm/s every second.", comment: "gal unitDescription")),
    ]
}
