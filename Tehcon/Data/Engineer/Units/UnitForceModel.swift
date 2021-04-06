//
//  UnitForceModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 20.01.2021.
//

import Foundation

class UnitForceModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType: MyUnitCalcType = .UnitOfForce
    var title = NSLocalizedString("Force", comment: "UnitCalcModel")
    var icon = "arrowshape.zigzag.right"
    var typeDescription = NSLocalizedString("In physics, a force is any influence that causes an object to undergo a certain change, either concerning its movement, direction, or geometrical construction. It is measured with the SI unit of newtons. In other words, a force is that which can cause an object with mass to change its velocity, that is, to accelerate, or which can cause a flexible object to deform.\n\nThe SI unit of force is the newton (N), which is the force required to accelerate a one-kilogram mass at a rate of one meter per second squared, or kg·m·s⁻². The corresponding CGS unit is the dyne, the force required to accelerate a one gram mass by one centimeter per second squared, or g·cm·s⁻².", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Newtons", comment: "newtons title"),
                      unit: UnitForce.newtons,
                      unitDescription: NSLocalizedString("A newton (N) is the SI derived unit of force. According to Newton’s second law of motion, it is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "Newtons description")),
        UnitCalcModel(title: NSLocalizedString("Femtonewtons", comment: "femtonewtons title"),
                      unit: UnitForce.femtonewtons,
                      unitDescription: NSLocalizedString("A femtonewton (fN) is a decimal fraction of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "femtonewtons description")),
        UnitCalcModel(title: NSLocalizedString("Piconewtons", comment: "piconewtons title"),
                      unit: UnitForce.piconewtons,
                      unitDescription: NSLocalizedString("A piconewton (pN) is a decimal fraction of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "piconewtons description")),
        UnitCalcModel(title: NSLocalizedString("Nanonewtons", comment: "nanonewtons title"),
                      unit: UnitForce.nanonewtons,
                      unitDescription: NSLocalizedString("A nanonewton (nN) is a decimal fraction of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "nanonewtons description")),
        UnitCalcModel(title: NSLocalizedString("Micronewtons", comment: "micronewtons title"),
                      unit: UnitForce.micronewtons,
                      unitDescription: NSLocalizedString("A micronewton (μN) is a decimal fraction of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "micronewtons description")),
        UnitCalcModel(title: NSLocalizedString("Millinewtons", comment: "millinewtons title"),
                      unit: UnitForce.millinewtons,
                      unitDescription: NSLocalizedString("A millinewton (mN) is a decimal fraction of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "millinewtons description")),
        UnitCalcModel(title: NSLocalizedString("Kilonewtons", comment: "kilonewtons title"),
                      unit: UnitForce.kilonewtons,
                      unitDescription: NSLocalizedString("A kilonewton (kN) is a decimal multiple of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "kilonewtons description")),
        UnitCalcModel(title: NSLocalizedString("Meganewtons", comment: "meganewtons title"),
                      unit: UnitForce.meganewtons,
                      unitDescription: NSLocalizedString("A meganewton (MN) is a decimal multiple of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "meganewtons description")),
        UnitCalcModel(title: NSLocalizedString("Giganewtons", comment: "giganewtons title"),
                      unit: UnitForce.giganewtons,
                      unitDescription: NSLocalizedString("A giganewton (GN) is a decimal multiple of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "giganewtons description")),
        UnitCalcModel(title: NSLocalizedString("Teranewtons", comment: "teranewtons title"),
                      unit: UnitForce.teranewtons,
                      unitDescription: NSLocalizedString("A teranewton (TN) is a decimal multiple of the SI derived unit of force newton. According to Newton’s second law of motion, one newton is equal to the amount of force required to accelerate a mass of one kilogram at a rate of one meter per second squared. Therefore, 1 N = 1 kg·m/s².", comment: "teranewtons description")),
        UnitCalcModel(title: NSLocalizedString("Gram-force", comment: "gramForce title"),
                      unit: UnitForce.gramForce,
                      unitDescription: NSLocalizedString("A gram-force (gf) , is a gravitational metric unit of force. It is equal to the force exerted by one gram of mass in a standard gravitational field. Therefore, one gram-force is by definition equal to 9.80665 mN. A gram-force is a convenient unit because its value is equal to the weight of an object with a mass of 1 g and it is easy to imagine what is, e.g., a 100 gf force.", comment: "gramForce description")),
        UnitCalcModel(title: NSLocalizedString("Kilogram-force", comment: "kilogramForce title"),
                      unit: UnitForce.kilogramForce,
                      unitDescription: NSLocalizedString("A kilogram-force (kgf), also called kilopond (kp), is a gravitational metric unit of force. It is equal to the force exerted by one kilogram of mass in a standard gravitational field. Therefore, one kilogram-force is by definition equal to 9.80665 N. A kilogram-force is a convenient unit because its value is equal to the weight of an object with a mass of 1 kg and it is easy to imagine what is, e.g., a 10 kgf force.", comment: "kilogramForce description")),
        UnitCalcModel(title: NSLocalizedString("Ton-force (metric)", comment: "tonForce title"),
                      unit: UnitForce.kilogramForce,
                      unitDescription: NSLocalizedString("A metric ton-force (tf), is a gravitational metric unit of force. It is equal to the force exerted by one metric ton of mass in a standard gravitational field. One metric ton-force is approximately equal to 9.80665 kN.", comment: "tonForce description")),
        UnitCalcModel(title: NSLocalizedString("Dyne", comment: "dyne title"),
                      unit: UnitForce.dyne,
                      unitDescription: NSLocalizedString("A dyne (dyn) is a unit of force specified in the centimeter-gram-second (CGS) system of units. Equivalently, the dyne is defined as the force required to accelerate a mass of one gram at a rate of one centimeter per second squared. One dyne is equal to 10 micronewtons.", comment: "dyne description")),
        UnitCalcModel(title: NSLocalizedString("Joule/meter", comment: "joule/Meter title"),
                      unit: UnitForce.jouleMeter,
                      unitDescription: NSLocalizedString("A joule per meter (J/m) is a metric unit of force. In mechanics, a joule is defined as the work done by a force of one newton acting to move an object through a distance of one meter in the direction in which the force is applied (1 J = 1 N·m). Therefore, joule per meter is equal to newton.", comment: "joule/Meter description")),
        UnitCalcModel(title: NSLocalizedString("Joule/centimeter", comment: "joule/Centimeter title"),
                      unit: UnitForce.jouleCentimeter,
                      unitDescription: NSLocalizedString("A joule per centimeter (J/cm) is a metric unit of force. In mechanics, a joule is defined as the work done by a force of one newton acting to move an object through a distance of one meter in the direction in which the force is applied (1 J = 1 N·m). Therefore joule per meter is equal to newton and, correspondingly, joule per centimeter is equal to 10 millinewtons.", comment: "joule/Centimeter description")),
        UnitCalcModel(title: NSLocalizedString("Ton-force (short)", comment: "tonForceShort title"),
                      unit: UnitForce.tonForceShort,
                      unitDescription: NSLocalizedString("A short ton-force (short tf), is a gravitational US Customary and British Imperial unit of force. It is equal to the force exerted by one short ton of mass in a standard gravitational field. One short ton-force is approximately equal to 8.896 kN.", comment: "tonForceShort description")),
        UnitCalcModel(title: NSLocalizedString("Ton-force (long) UK", comment: "tonForceLong title"),
                      unit: UnitForce.tonForceLong,
                      unitDescription: NSLocalizedString("A long ton-force (long tf), is a gravitational US Customary and British Imperial unit of force. It is equal to the force exerted by one short ton of mass in a standard gravitational field. One long ton-force is approximately equal to 9.964 kN.", comment: "tonForceLong description")),
        UnitCalcModel(title: NSLocalizedString("Kip-force", comment: "kipforce title"),
                      unit: UnitForce.kipforce,
                      unitDescription: NSLocalizedString("A kip or kip-force, or kilopound (kip, klb, kipf) is a non-SI non-metric unit of force. It is equal to 1,000 pounds-force and used primarily by American architects and engineers to measure engineering loads. 1 kip = 4448.22 newtons (N) = 4.44822 kilonewtons (kN). The name kip comes from combining two words: “kilo” and “pound”. It is also called kilopound-force.", comment: "kipforce description")),
        UnitCalcModel(title: NSLocalizedString("Kilopound-force", comment: "kilopoundForce title"),
                      unit: UnitForce.kilopoundForce,
                      unitDescription: NSLocalizedString("A kilopound-force, also called kip, kip-force (kip, klb, kipf) is a non-SI non-metric unit of force. It is equal to 1,000 pounds-force and used primarily by American architects and engineers to measure engineering loads. 1 kip = 4448.22 newtons (N) = 4.44822 kilonewtons (kN). The name kip comes from combining two words: “kilo” and “pound”", comment: "kilopoundForce description")),
        UnitCalcModel(title: NSLocalizedString("Pound-force", comment: "poundForce title"),
                      unit: UnitForce.poundForce,
                      unitDescription: NSLocalizedString("A pound-force (lb, lbf) is a unit of force in some systems of measurement including English engineering units and British gravitational units. It is equal to the force exerted by one pound of mass in a standard gravitational field. 1 pound-force ≈ 4.44822 N.", comment: "poundForce description")),
        UnitCalcModel(title: NSLocalizedString("Ounce-force", comment: "ounceForce title"),
                      unit: UnitForce.ounceForce,
                      unitDescription: NSLocalizedString("An ounce-force is a unit of force in some systems of measurement including English engineering units and British gravitational units. It is equal to the force exerted by one ounce of mass in a standard gravitational field. 1 ounce-force = 1/16 lbf ≈ 0.27801 N.", comment: "ounceForce description")),
        UnitCalcModel(title: NSLocalizedString("Poundal", comment: "poundal title"),
                      unit: UnitForce.poundal,
                      unitDescription: NSLocalizedString("A poundal (pdl) is a unit of force in the foot-pound-second (FPS) system of units and in the British imperial units. It is defined as the force necessary to accelerate 1 pound-mass at a rate of 1 foot per second per second. 1 pdl ≈ 0.13825 N. 1 pdl = 1 lb·ft/s².", comment: "poundal description")),
        UnitCalcModel(title: NSLocalizedString("Pound-foot per second squared", comment: "poundFootSquareSecond title"),
                      unit: UnitForce.poundFootSquareSecond,
                      unitDescription: NSLocalizedString("A pound foot per second squared (lb·ft/s²) is a unit of force in the foot-pound-second system of units and in the British imperial units. It is defined as the force necessary to accelerate 1 pound-mass at a rate of 1 foot per second per second. 1 lb·ft/s² ≈ 0.13825 N. Another name of this unit is the poundal (pdl).", comment: "poundFootSquareSecond description")),
        UnitCalcModel(title: NSLocalizedString("Pond", comment: "pond title"),
                      unit: UnitForce.pond,
                      unitDescription: NSLocalizedString("A pond (p) , also called or gram-force (gf), is an obsolete gravitational metric unit of force. It is equal to the force exerted by one gram of mass in a standard gravitational field. Therefore, one pond is by definition equal to 9.80665 mN.", comment: "pond description")),
        UnitCalcModel(title: NSLocalizedString("Kilopond", comment: "kilopond title"),
                      unit: UnitForce.kilopond,
                      unitDescription: NSLocalizedString("A kilopond (kp), also called kilogram-force (kgf), is an obsolete gravitational metric unit of force. It is equal to the force exerted by one kilogram of mass in a standard gravitational field. Therefore, one kilopond is by definition equal to 9.80665 N.", comment: "kilopond description")),
    ]
    
    
}
