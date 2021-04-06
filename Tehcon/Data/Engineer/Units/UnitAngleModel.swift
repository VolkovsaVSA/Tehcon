//
//  UnitAngleModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitAngleModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfAngle
    var title = NSLocalizedString("Angle", comment: "UnitCalcModel")
    var icon = "escape"
    var typeDescription = NSLocalizedString("An angle is the figure formed by two rays, called the sides of the angle, sharing a common endpoint, called the vertex of the angle. In physics, angle is also used to designate the measure of an angle or of a rotation. This measure is the ratio of the length of a circular arc by its radius. In the case of an angle (figure), the arc is centered at the vertex and delimited by the sides. In the case of a rotation, the arc is centered at the center of the rotation and delimited by any point and its image by the rotation.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Degrees", comment: "degrees title"),
                      unit: UnitAngle.degrees,
                      unitDescription: NSLocalizedString("A degree or degree of arc (°) is a measurement of plane angle representing 1/360 of a full rotation. One degree is equivalent to π/180 radians. It is not an International System of Units (SI) unit.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Minutes of arc", comment: "arcMinutes title"),
                      unit: UnitAngle.arcMinutes,
                      unitDescription: NSLocalizedString("A minute of arc, arcminute or simply minute is a unit of angle equal to (1/60) of one degree or π/10,800 radians. It is not an International System of Units (SI) unit.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Seconds of arc", comment: "arcSeconds title"),
                      unit: UnitAngle.arcSeconds,
                      unitDescription: NSLocalizedString("A second of arc, arcsecond, or simply second is 1⁄60 of one minute of arc. The arcsecond is equal to 1⁄3,600 of a degree, or 1⁄1,296,000 of a circle, or π⁄648,000 radians. It is not an International System of Units (SI) unit.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Radians", comment: "radians title"),
                      unit: UnitAngle.radians,
                      unitDescription: NSLocalizedString("In mathematics and physics, radian (rad) is the standard unit of angle and is defined as the ratio between the length of an arc and its radius. Thus, one full angle or full circle is equal to 2π radians. The radian is an SI derived unit. One radian is the angle subtended at the center of a circle by an arc that is equal in length to the radius of the circle.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("GRadians", comment: "gradians title"),
                      unit: UnitAngle.gradians,
                      unitDescription: NSLocalizedString("A grad also known as gradian, gon or grade is a unit of plane angle, equivalent to 1/400 of a turn. One grad equals π/200 radians or 9/10 of a degree. 1 grad is divided into 100 metric minutes and 1 metric minute is divided into 100 metric seconds.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Turns", comment: "Turns title"),
                      unit: UnitAngle.revolutions,
                      unitDescription: NSLocalizedString("A turn (also revolution, complete rotation, cycle or full circle) is a unit of angle measurement. It is equal to 2 π radians or 360 degrees.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Quadrants", comment: "Quadrants title"),
                      unit: UnitAngle.quadrant,
                      unitDescription: NSLocalizedString("Quadrant is one of the four divisions of the plane made by the axes of a two-dimensional Cartesian system. They are usually numbered from 1st to 4th and denoted by Roman numerals I to IV.", comment: "degrees unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Sextants", comment: "Sextants title"),
                      unit: UnitAngle.sextant,
                      unitDescription: NSLocalizedString("Sextant is a sixth part of a circle having an arc, which subtends an angle of 60 degrees. From Latin sextans — one-sixth of a unit.", comment: "degrees unitDescription")),
    ]
    
}
