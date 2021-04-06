//
//  UnitSpeedModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitSpeedModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfSpeed
    var title = NSLocalizedString("Velocity", comment: "UnitCalcModel")
    var icon = "speedometer"
    var typeDescription = NSLocalizedString("Velocity is a vector measure of how fast and how far an object has moved in a particular direction. In physics, velocity means the time it took an object to move from one place to another, and the direction of movement. Velocity is a vector physical quantity because both magnitude and direction are required to define it.\nThe scalar absolute value (magnitude) of velocity is speed, a quantity that is measured in meters per second (m/s or m·s⁻¹) when using the SI (metric) system. In fluid mechanics, the Mach number is often used. It is a dimensionless quantity representing the speed of an object moving through air or other fluid divided by the local speed of sound. It is commonly used to represent the speed of an object when it is traveling close to or above the speed of sound. \"Mach 2\" means an object is moving with the speed, which is equal to the speed of sound multiplied by two.", comment: "UnitOfSpeed type description")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Meters per second", comment: "metersPerSecond title"),
                      unit: UnitSpeed.metersPerSecond,
                      unitDescription: NSLocalizedString("A meter per second (m/s, m·s⁻¹) is a SI derived unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction). It is defined as the number of meters traveled in one second.", comment: "metersPerSecond description")),
        UnitCalcModel(title: NSLocalizedString("Kilometers per hour", comment: "kilometersPerHour title"),
                      unit: UnitSpeed.kilometersPerHour,
                      unitDescription: NSLocalizedString("A kilometer per hour (km/h, km·h⁻¹) is a metric unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction). It is defined as the number of kilometers traveled in one hour.", comment: "kilometersPerHour description")),
        UnitCalcModel(title: NSLocalizedString("Kilometers per minute", comment: "kilometerPerMinute title"),
                      unit: UnitSpeed.kilometerPerMinute,
                      unitDescription: NSLocalizedString("A kilometer per minute (km/min, km·min⁻¹) is a metric unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction). It is defined as the number of kilometers traveled in one minute.", comment: "kilometerPerMinute description")),
        UnitCalcModel(title: NSLocalizedString("Kilometers per second", comment: "kilometerPerSecond title"),
                      unit: UnitSpeed.kilometerPerSecond,
                      unitDescription: NSLocalizedString("A kilometer per second (km/s, km·s⁻¹) is a metric unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction). It is defined as the number of kilometers traveled in one second.", comment: "kilometerPerSecond description")),
        UnitCalcModel(title: NSLocalizedString("Miles per hour", comment: "milesPerHour title"),
                      unit: UnitSpeed.milesPerHour,
                      unitDescription: NSLocalizedString("A mile per hour (mi/h, mi·h⁻¹) is a unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction) in the US Customary Units and British Imperial Units. It is defined as the number of miles traveled in one hour.", comment: "milesPerHour description")),
        UnitCalcModel(title: NSLocalizedString("Miles per second", comment: "milePerSecond title"),
                      unit: UnitSpeed.milePerSecond,
                      unitDescription: NSLocalizedString("A mile per second (mi/s, mi·s⁻¹) is a unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction) in the US Customary Units and British Imperial Units. It is defined as the number of miles traveled in one second.", comment: "milePerSecond description")),
        UnitCalcModel(title: NSLocalizedString("Feets per hour", comment: "feetPerHour title"),
                      unit: UnitSpeed.feetPerHour,
                      unitDescription: NSLocalizedString("A foot per hour (ft/h, ft·h⁻¹) is a unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction) in the US Customary Units and British Imperial Units. It is defined as the number of feet traveled in one hour.", comment: "feetPerHour description")),
        UnitCalcModel(title: NSLocalizedString("Feets per minute", comment: "feetPerMinute title"),
                      unit: UnitSpeed.feetPerMinute,
                      unitDescription: NSLocalizedString("A foot per minute (ft/min, ft·min⁻¹) is a unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction) in the US Customary Units and British Imperial Units. It is defined as the number of feet traveled in one minute.", comment: "feetPerMinute description")),
        UnitCalcModel(title: NSLocalizedString("Feets per second", comment: "feetPerSecond title"),
                      unit: UnitSpeed.feetPerSecond,
                      unitDescription: NSLocalizedString("A foot per second (ft/s, ft·s⁻¹) is a unit of both speed (scalar value) and velocity (vector value, which specifies both magnitude and a specific direction) in the US Customary Units and British Imperial Units. It is defined as the number of feet traveled in one second.", comment: "feetPerSecond description")),
        UnitCalcModel(title: NSLocalizedString("Knots", comment: "knots title"),
                      unit: UnitSpeed.knots,
                      unitDescription: NSLocalizedString("An international knot (kt kn) is a non-SI unit of speed equal to one nautical mile (1.852 km) per hour or 0.514 m/s. The knot is accepted for use with the International System of Units (SI). Worldwide, the knot is used in meteorology, in nautical navigation and aviation.", comment: "knots description")),
        UnitCalcModel(title: NSLocalizedString("Mach", comment: "Mach title"),
                      unit: UnitSpeed.mach,
                      unitDescription: NSLocalizedString("Mach number (Ma, M) is the ratio of the speed of an object moving through a fluid to the speed of sound in this fluid. As it is the ratio of two speeds, it is a dimensionless quantity. The speed of sound depends on temperature, atmospheric composition, and pressure. Therefore, the Mach number can be the same for different actual speeds of an aircraft at different conditions.", comment: "mach description")),
    ]
}
