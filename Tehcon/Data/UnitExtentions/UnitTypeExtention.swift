//
//  UnitTypeExtention.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 16.01.2021.
//

import Foundation

extension UnitAcceleration {
    static let kilometerPerSecondSquared = UnitAcceleration(symbol: NSLocalizedString("km/s\u{00B2}", comment: "kilometerPerSecondSquared symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let millimeterPerSecondSquared = UnitAcceleration(symbol: NSLocalizedString("mm/s\u{00B2}", comment: "millimeterPerSecondSquared symbol"), converter: UnitConverterLinear(coefficient: 0.001))
    static let yardPerSecondSquared = UnitAcceleration(symbol: NSLocalizedString("yd/s\u{00B2}", comment: "yardPerSecondSquared symbol"), converter: UnitConverterLinear(coefficient: 0.9144))
    static let feetPerSecondSquared = UnitAcceleration(symbol: NSLocalizedString("ft/s\u{00B2}", comment: "feetPerSecondSquared symbol"), converter: UnitConverterLinear(coefficient: 0.3048))
    static let inchPerSecondSquared = UnitAcceleration(symbol: NSLocalizedString("in/s\u{00B2}", comment: "inchPerSecondSquared symbol"), converter: UnitConverterLinear(coefficient: 0.0254))
    static let gal = UnitAcceleration(symbol: NSLocalizedString("Gal", comment: "Gal symbol"), converter: UnitConverterLinear(coefficient: 0.01))
}

extension UnitAngle {
    static let quadrant = UnitAngle(symbol: NSLocalizedString("⌔", comment: "quadrant symbol"), converter: UnitConverterLinear(coefficient: 90))
    static let sextant = UnitAngle(symbol: NSLocalizedString("⌔", comment: "sextant symbol"), converter: UnitConverterLinear(coefficient: 60))
}

extension UnitArea {
    static let rood = UnitArea(symbol: NSLocalizedString("ro", comment: "rood symbol"), converter: UnitConverterLinear(coefficient: 1011.7141056))
    static let township = UnitArea(symbol: NSLocalizedString("township", comment: "township symbol"), converter: UnitConverterLinear(coefficient: 93239571.972))
    static let homestead = UnitArea(symbol: NSLocalizedString("homestead", comment: "homestead symbol"), converter: UnitConverterLinear(coefficient: 647497.02758))
    static let section = UnitArea(symbol: NSLocalizedString("sq", comment: "section symbol"), converter: UnitConverterLinear(coefficient: 2589988.110336))
    
    static let tsubo = UnitArea(symbol: NSLocalizedString("tsubo", comment: "tsubo symbol"), converter: UnitConverterLinear(coefficient: 3.3057862))
    static let shaku = UnitArea(symbol: NSLocalizedString("shaku", comment: "shaku symbol"), converter: UnitConverterLinear(coefficient: 0.033057862))
    static let go = UnitArea(symbol: NSLocalizedString("gō", comment: "gō symbol"), converter: UnitConverterLinear(coefficient: 0.33057862))
    static let jo = UnitArea(symbol: NSLocalizedString("jō", comment: "jō symbol"), converter: UnitConverterLinear(coefficient: 1.6528931))
    static let se = UnitArea(symbol: NSLocalizedString("se", comment: "se symbol"), converter: UnitConverterLinear(coefficient: 99.173586))
    static let tan = UnitArea(symbol: NSLocalizedString("tan", comment: "tan symbol"), converter: UnitConverterLinear(coefficient: 991.73586))
    static let cho = UnitArea(symbol: NSLocalizedString("chō", comment: "Chō symbol"), converter: UnitConverterLinear(coefficient: 9917.3586))
}

class UnitDensity: Dimension {
    static let kilogramPerCubicMeter = UnitDensity(symbol: "kg/m\u{00B3}", converter: UnitConverterLinear(coefficient: 1.0))
    static let gramPerCubicMeter = UnitDensity(symbol: NSLocalizedString("g/m\u{00B3}", comment: "gramPerCubicMeter symbol"), converter: UnitConverterLinear(coefficient: 0.001))
    static let milligramPerCubicMeter = UnitDensity(symbol: NSLocalizedString("mg/m\u{00B3}", comment: "miligramPerCubicMeter symbol"), converter: UnitConverterLinear(coefficient: 0.000001))
    static let kilogramPerCubicCentimeter = UnitDensity(symbol: NSLocalizedString("kg/cm\u{00B3}", comment: "kilogramPerCubicCentimeter symbol"), converter: UnitConverterLinear(coefficient: 1000000))
    static let gramPerCubicCentimeter = UnitDensity(symbol: NSLocalizedString("g/cm\u{00B3}", comment: "gramPerCubicCentimeter symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let milligramPerCubicCentimeter = UnitDensity(symbol: NSLocalizedString("mg/cm\u{00B3}", comment: "miliGramPerCubicCentimeter symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let kilogramPerLitre = UnitDensity(symbol: NSLocalizedString("kg/L", comment: "kilogramPerLitre symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let gramPerLitre = UnitDensity(symbol: NSLocalizedString("g/L", comment: "gramPerLitre symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let milligramPerLitre = UnitDensity(symbol: NSLocalizedString("mg/L", comment: "miligramPerLitre symbol"), converter: UnitConverterLinear(coefficient: 0.001))
    static let kilogramPerMillilitre = UnitDensity(symbol: NSLocalizedString("kg/mL", comment: "kilogramPerMililitre symbol"), converter: UnitConverterLinear(coefficient: 1000000))
    static let gramPerMillilitre = UnitDensity(symbol: NSLocalizedString("g/mL", comment: "gramPerMililitre symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let milligramPerMillilitre = UnitDensity(symbol: NSLocalizedString("mg/mL", comment: "miligramPerMililitre symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let poundPerCubicYard = UnitDensity(symbol: NSLocalizedString("lb/yd\u{00B3}", comment: "poundPerCubicYard symbol"), converter: UnitConverterLinear(coefficient: 0.5932764213))
    static let poundPerCubicFeets = UnitDensity(symbol: NSLocalizedString("lb/ft\u{00B3}", comment: "poundPerCubicFeets symbol"), converter: UnitConverterLinear(coefficient: 16.0184632652))
    static let poundPerCubicInch = UnitDensity(symbol: NSLocalizedString("lb/in\u{00B3}", comment: "poundPerCubicInch symbol"), converter: UnitConverterLinear(coefficient: 27679.9047102672))
    static let poundPerGallonUS = UnitDensity(symbol: NSLocalizedString("lb/gal (US)", comment: "poundPerGallonUS symbol"), converter: UnitConverterLinear(coefficient: 119.82642732))
    static let poundPerGallonUK = UnitDensity(symbol: NSLocalizedString("lb/gal (UK)", comment: "poundPerGallonUK symbol"), converter: UnitConverterLinear(coefficient: 99.776372663))
    static let ouncePerCubicFeet = UnitDensity(symbol: NSLocalizedString("oz/ft\u{00B3}", comment: "ouncePerCubicFeet symbol"), converter: UnitConverterLinear(coefficient: 1.0011539609))
    static let ouncePerCubicInch = UnitDensity(symbol: NSLocalizedString("oz/in\u{00B3}", comment: "ouncePerCubicInch symbol"), converter: UnitConverterLinear(coefficient: 1729.9940444))
    static let ouncePerGallonUS = UnitDensity(symbol: NSLocalizedString("oz/gal (US)", comment: "ouncePerGallonUS symbol"), converter: UnitConverterLinear(coefficient: 7.4891517073))
    static let ouncePerGallonUK = UnitDensity(symbol: NSLocalizedString("oz/gal (UK)", comment: "ouncePerGallonUK symbol"), converter: UnitConverterLinear(coefficient: 6.2360232914))
    
//    static let baseUnit = kilogramPerCubicMeter
    
    override static func baseUnit() -> Self {
        return UnitDensity.kilogramPerCubicMeter as! Self
    }
}

extension UnitDuration {
    static let day = UnitDuration(symbol: NSLocalizedString("d", comment: "day symbol"), converter: UnitConverterLinear(coefficient: 86400))
    static let week = UnitDuration(symbol: NSLocalizedString("week", comment: "week symbol"), converter: UnitConverterLinear(coefficient: 604800))
    static let month = UnitDuration(symbol: NSLocalizedString("month", comment: "month symbol"), converter: UnitConverterLinear(coefficient: 2628000))
    static let year = UnitDuration(symbol: NSLocalizedString("year", comment: "year symbol"), converter: UnitConverterLinear(coefficient: 31536000))
    static let femtosecond = UnitDuration(symbol: NSLocalizedString("fs", comment: "femtosecond symbol"), converter: UnitConverterLinear(coefficient: 1e-15))
    static let attosecond = UnitDuration(symbol: NSLocalizedString("as", comment: "attosecond symbol"), converter: UnitConverterLinear(coefficient: 1e-18))
}

extension UnitElectricCharge {
    static let ampereminutes = UnitElectricCharge(symbol: NSLocalizedString("A•min", comment: "ampereminutes symbol"), converter: UnitConverterLinear(coefficient: 60))
    static let ampereseconds = UnitElectricCharge(symbol: NSLocalizedString("A•s", comment: "ampereseconds symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let faraday = UnitElectricCharge(symbol: NSLocalizedString("F", comment: "faraday symbol"), converter: UnitConverterLinear(coefficient: 96485.332123))
}

extension UnitElectricCurrent {
    static let biot = UnitElectricCurrent(symbol: NSLocalizedString("Bi", comment: "biot symbol"), converter: UnitConverterLinear(coefficient: 10))
    static let statampere = UnitElectricCurrent(symbol: NSLocalizedString("stA", comment: "statampere symbol"), converter: UnitConverterLinear(coefficient: 3.335641e-10))
}

extension UnitElectricPotentialDifference {
    static let abvolt = UnitElectricPotentialDifference(symbol: NSLocalizedString("abV", comment: "abvolt symbol"), converter: UnitConverterLinear(coefficient: 1e-8))
    static let statvolt = UnitElectricPotentialDifference(symbol: NSLocalizedString("stV", comment: "statvolt symbol"), converter: UnitConverterLinear(coefficient: 299.7925))
}

extension UnitElectricResistance {
    static let abohm = UnitElectricResistance(symbol: NSLocalizedString("abohm", comment: "abohm symbol"), converter: UnitConverterLinear(coefficient: 1e-9))
    static let statohm = UnitElectricResistance(symbol: NSLocalizedString("statohm", comment: "statohm symbol"), converter: UnitConverterLinear(coefficient: 898755200000))
}

extension UnitEnergy {
    static let watthour = UnitEnergy(symbol: NSLocalizedString("W•h", comment: "watthour symbol"), converter: UnitConverterLinear(coefficient: 3600))
    static let megawatthour = UnitEnergy(symbol: NSLocalizedString("MW•h", comment: "megawatthour symbol"), converter: UnitConverterLinear(coefficient: 3600000000))
    static let gigawatthour = UnitEnergy(symbol: NSLocalizedString("GW•h", comment: "gigawatthour symbol"), converter: UnitConverterLinear(coefficient: 3600000000000))
    static let horsepowerHour = UnitEnergy(symbol: NSLocalizedString("hp", comment: "horsepower symbol"), converter: UnitConverterLinear(coefficient: 2647795.5))
    static let megajoule = UnitEnergy(symbol: NSLocalizedString("MJ", comment: "megajoule symbol"), converter: UnitConverterLinear(coefficient: 1000000))
    static let microjoule = UnitEnergy(symbol: NSLocalizedString("µJ", comment: "microjoule symbol"), converter: UnitConverterLinear(coefficient: 0.000001))
    static let millijoule = UnitEnergy(symbol: NSLocalizedString("mJ", comment: "millijoule symbol"), converter: UnitConverterLinear(coefficient: 0.001))
    static let electronVolt = UnitEnergy(symbol: NSLocalizedString("eV", comment: "electronVolt symbol"), converter: UnitConverterLinear(coefficient: 1.60217733e-19))
    static let kiloelectronVolt = UnitEnergy(symbol: NSLocalizedString("keV", comment: "kiloelectronVolt symbol"), converter: UnitConverterLinear(coefficient: 1.60217733e-16))
    static let megaelectronVolt = UnitEnergy(symbol: NSLocalizedString("MeV", comment: "megaelectronVolt symbol"), converter: UnitConverterLinear(coefficient: 1.60217733e-13))
    static let wattsecond = UnitEnergy(symbol: NSLocalizedString("W•s", comment: "wattsecond symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let kilowattSecond = UnitEnergy(symbol: NSLocalizedString("kW•s", comment: "kilowattsecond symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let newtonMeter = UnitEnergy(symbol: NSLocalizedString("N•m", comment: "newtonMeter symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let tonExplosives = UnitEnergy(symbol: NSLocalizedString("ton", comment: "tonExplosives symbol"), converter: UnitConverterLinear(coefficient: 4184000000))
    static let kilotonExplosives = UnitEnergy(symbol: NSLocalizedString("kton", comment: "kilotonExplosives symbol"), converter: UnitConverterLinear(coefficient: 4184000000000))
    static let megatonExplosives = UnitEnergy(symbol: NSLocalizedString("Mton", comment: "megatonExplosives symbol"), converter: UnitConverterLinear(coefficient: 4184000000000000))
    static let gigatonExplosives = UnitEnergy(symbol: NSLocalizedString("Gton", comment: "gigatonExplosives symbol"), converter: UnitConverterLinear(coefficient: 4184000000000000000))
    static let dyneCentimeter = UnitEnergy(symbol: NSLocalizedString("dyn•cm", comment: "dyneCentimeter symbol"), converter: UnitConverterLinear(coefficient: 1e-7))
    static let gramforceCentimeter = UnitEnergy(symbol: NSLocalizedString("gf•cm", comment: "gramforceCentimeter symbol"), converter: UnitConverterLinear(coefficient: 0.0000980665))
    static let gramforceMeter = UnitEnergy(symbol: NSLocalizedString("gf•m", comment: "gramforceMeter symbol"), converter: UnitConverterLinear(coefficient: 0.00980665))
    static let kilogramforceCentimeter = UnitEnergy(symbol: NSLocalizedString("kgf•cm", comment: "kilogramforceCentimeter symbol"), converter: UnitConverterLinear(coefficient: 0.0980665))
    static let kilogramforceMeter = UnitEnergy(symbol: NSLocalizedString("kgf•m", comment: "kilogramforceMeter symbol"), converter: UnitConverterLinear(coefficient: 9.8066499997))
    static let kilopondMeter = UnitEnergy(symbol: NSLocalizedString("kp•m", comment: "kilopondMeter symbol"), converter: UnitConverterLinear(coefficient: 9.8066499997))
    static let poundforceInches = UnitEnergy(symbol: NSLocalizedString("lbf•in", comment: "poundforceInches symbol"), converter: UnitConverterLinear(coefficient: 0.112984829))
    static let poundforceFeets = UnitEnergy(symbol: NSLocalizedString("lbf•ft", comment: "poundforceFeets symbol"), converter: UnitConverterLinear(coefficient: 1.3558179483))
    static let ounceforceInches = UnitEnergy(symbol: NSLocalizedString("ozf•in", comment: "ounceforceInches symbol"), converter: UnitConverterLinear(coefficient: 0.0070615518))
    static let inchPounds = UnitEnergy(symbol: NSLocalizedString("in•lbf", comment: "inchpounds symbol"), converter: UnitConverterLinear(coefficient: 0.112984829))
    static let footPounds = UnitEnergy(symbol: NSLocalizedString("ft•lbf", comment: "footpounds symbol"), converter: UnitConverterLinear(coefficient: 1.3558179483))
    static let inchOunces = UnitEnergy(symbol: NSLocalizedString("in•ozf", comment: "inchOunces symbol"), converter: UnitConverterLinear(coefficient: 0.112984829))
    static let poundalFoots = UnitEnergy(symbol: NSLocalizedString("pdl•ft", comment: "poundalFoots symbol"), converter: UnitConverterLinear(coefficient: 0.04214011))
    static let thermEU = UnitEnergy(symbol: NSLocalizedString("therm (EU)", comment: "thermEU symbol"), converter: UnitConverterLinear(coefficient: 105505600))
    static let thermUS = UnitEnergy(symbol: NSLocalizedString("therm (US)", comment: "thermUS symbol"), converter: UnitConverterLinear(coefficient: 105480400))
    static let hartreeEnergy = UnitEnergy(symbol: NSLocalizedString("Eh", comment: "hartreeEnergy symbol"), converter: UnitConverterLinear(coefficient: 4.359748199e-18))
    
}

class UnitForce: Dimension {
    
    static let newtons = UnitForce(symbol: NSLocalizedString("N", comment: "newtons symbol"), converter: UnitConverterLinear(coefficient: 1.0))
    static let femtonewtons = UnitForce(symbol: NSLocalizedString("fN", comment: "femtonewtons symbol"), converter: UnitConverterLinear(coefficient: 1e-15))
    static let piconewtons = UnitForce(symbol: NSLocalizedString("pN", comment: "piconewtons symbol"), converter: UnitConverterLinear(coefficient: 1e-12))
    static let nanonewtons = UnitForce(symbol: NSLocalizedString("nN", comment: "nanonewtons symbol"), converter: UnitConverterLinear(coefficient: 1e-9))
    static let micronewtons = UnitForce(symbol: NSLocalizedString("µN", comment: "micronewtons symbol"), converter: UnitConverterLinear(coefficient: 0.000001))
    static let millinewtons = UnitForce(symbol: NSLocalizedString("mN", comment: "millinewtons symbol"), converter: UnitConverterLinear(coefficient: 0.001))
    static let kilonewtons = UnitForce(symbol: NSLocalizedString("kN", comment: "kilonewtons symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let meganewtons = UnitForce(symbol: NSLocalizedString("MN", comment: "meganewtons symbol"), converter: UnitConverterLinear(coefficient: 1000000))
    static let giganewtons = UnitForce(symbol: NSLocalizedString("GN", comment: "giganewtons symbol"), converter: UnitConverterLinear(coefficient: 1000000000))
    static let teranewtons = UnitForce(symbol: NSLocalizedString("TN", comment: "teranewtons symbol"), converter: UnitConverterLinear(coefficient: 1000000000000))
    static let gramForce = UnitForce(symbol: NSLocalizedString("gF", comment: "gramforce symbol"), converter: UnitConverterLinear(coefficient: 0.00980665))
    static let kilogramForce = UnitForce(symbol: NSLocalizedString("kgF", comment: "kilogramForce symbol"), converter: UnitConverterLinear(coefficient: 9.80665))
    static let tonForce = UnitForce(symbol: NSLocalizedString("tF", comment: "tonForce symbol"), converter: UnitConverterLinear(coefficient: 9806.65))
    static let dyne = UnitForce(symbol: NSLocalizedString("dyn", comment: "dyne symbol"), converter: UnitConverterLinear(coefficient: 0.00001))
    static let jouleMeter = UnitForce(symbol: NSLocalizedString("J/m", comment: "joule/meter symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let jouleCentimeter = UnitForce(symbol: NSLocalizedString("J/cm", comment: "joule/Centimeter symbol"), converter: UnitConverterLinear(coefficient: 0.01))
    static let tonForceShort = UnitForce(symbol: NSLocalizedString("tF (short)", comment: "tonForceShort symbol"), converter: UnitConverterLinear(coefficient: 8896.4432305))
    static let tonForceLong = UnitForce(symbol: NSLocalizedString("tF UK", comment: "tonForceLong symbol"), converter: UnitConverterLinear(coefficient: 9964.0164182))
    static let kipforce = UnitForce(symbol: NSLocalizedString("kipf", comment: "kipforce symbol"), converter: UnitConverterLinear(coefficient: 4448.2216153))
    static let kilopoundForce = UnitForce(symbol: NSLocalizedString("kipf", comment: "kilopoundForce symbol"), converter: UnitConverterLinear(coefficient: 4448.2216153))
    static let poundForce = UnitForce(symbol: NSLocalizedString("lbf", comment: "poundForce symbol"), converter: UnitConverterLinear(coefficient: 4.4482216153))
    static let ounceForce = UnitForce(symbol: NSLocalizedString("ozf", comment: "ounceForce symbol"), converter: UnitConverterLinear(coefficient: 0.278013851))
    static let poundal = UnitForce(symbol: NSLocalizedString("pdl", comment: "poundal symbol"), converter: UnitConverterLinear(coefficient: 0.1382549544))
    static let poundFootSquareSecond = UnitForce(symbol: NSLocalizedString("lb•ft/s\u{00B2}", comment: "poundFootSquareSecond symbol"), converter: UnitConverterLinear(coefficient: 0.1382549544))
    static let pond = UnitForce(symbol: NSLocalizedString("p", comment: "pond symbol"), converter: UnitConverterLinear(coefficient: 0.00980665))
    static let kilopond = UnitForce(symbol: NSLocalizedString("kp", comment: "kilopond symbol"), converter: UnitConverterLinear(coefficient: 9.80665))
    
//    static let baseUnit = UnitForce.newtons
    
    override static func baseUnit() -> Self {
        return UnitForce.newtons as! Self
    }
}

extension UnitFrequency {
    static let cyclesPerSecond = UnitFrequency(symbol: NSLocalizedString("cl/s", comment: "cyclesPerSecond symbol"), converter: UnitConverterLinear(coefficient: 1))
}

extension UnitFuelEfficiency {
    static let metersPerLiter = UnitFrequency(symbol: NSLocalizedString("m/L", comment: "metersPerlite symbol"), converter: UnitConverterLinear(coefficient: 100000))
    static let kilometersPerLiter = UnitFrequency(symbol: NSLocalizedString("km/L", comment: "kilometersPerLiter symbol"), converter: UnitConverterLinear(coefficient: 100))
    static let milesUSPerLiter = UnitFrequency(symbol: NSLocalizedString("mi(US)/L", comment: "milesPerLiter symbol"), converter: UnitConverterLinear(coefficient: 62.137119224))
    static let kilometersPerGallonUS = UnitFrequency(symbol: NSLocalizedString("km/gallon (US)", comment: "kilometersPerGallonUS symbol"), converter: UnitConverterLinear(coefficient: 378.54117834))
    static let metersPerGallonUS = UnitFrequency(symbol: NSLocalizedString("m/gallon (US)", comment: "metersPerGallonUS symbol"), converter: UnitConverterLinear(coefficient: 378541.17834))
    static let metersPerGallonUK = UnitFrequency(symbol: NSLocalizedString("m/gallon (UK)", comment: "metersPerGallonUK symbol"), converter: UnitConverterLinear(coefficient: 454609.92939))
    static let milesPerGallonUS = UnitFrequency(symbol: NSLocalizedString("mi/gallon (US)", comment: "milesPerGallonUS symbol"), converter: UnitConverterLinear(coefficient: 235.21458329))
    static let milesPerGallonUK = UnitFrequency(symbol: NSLocalizedString("mi/gallon (UK)", comment: "milesPerGallonUK symbol"), converter: UnitConverterLinear(coefficient: 282.48093628))
    static let metersPerCubicCentimeter = UnitFrequency(symbol: NSLocalizedString("m/cm\u{00B3}", comment: "metersPerCubicCentimeter symbol"), converter: UnitConverterLinear(coefficient: 100))
    static let metersPerCubicMeter = UnitFrequency(symbol: NSLocalizedString("m/m\u{00B3}", comment: "metersPerCubicMeter symbol"), converter: UnitConverterLinear(coefficient: 100000000))
    static let metersPerCubicInch = UnitFrequency(symbol: NSLocalizedString("m/in\u{00B3}", comment: "metersPerCubicInch symbol"), converter: UnitConverterLinear(coefficient: 1638.7064001))
    static let metersPerCubicFoot = UnitFrequency(symbol: NSLocalizedString("m/ft\u{00B3}", comment: "metersPerCubicFoot symbol"), converter: UnitConverterLinear(coefficient: 2831684.6593))
    static let metersPerCubicYard = UnitFrequency(symbol: NSLocalizedString("m/yd\u{00B3}", comment: "metersPerCubicYard symbol"), converter: UnitConverterLinear(coefficient: 76455485.817))
    static let metersPerQuartUS = UnitFrequency(symbol: NSLocalizedString("m/qr (US)", comment: "metersPerQuartUS symbol"), converter: UnitConverterLinear(coefficient: 94635.294639))
    static let metersPerQuartUK = UnitFrequency(symbol: NSLocalizedString("m/qr (UK)", comment: "metersPerQuartUK symbol"), converter: UnitConverterLinear(coefficient: 113652.4823))
    static let metersPerPintUS = UnitFrequency(symbol: NSLocalizedString("m/pt (US)", comment: "metersPerPintUS symbol"), converter: UnitConverterLinear(coefficient: 47317.647297))
    static let metersPerPintUK = UnitFrequency(symbol: NSLocalizedString("m/pt (UK)", comment: "metersPerPintUK symbol"), converter: UnitConverterLinear(coefficient: 56826.241168))
    static let metersPerCupUS = UnitFrequency(symbol: NSLocalizedString("m/cup (US)", comment: "metersPerCupUS symbol"), converter: UnitConverterLinear(coefficient: 23658.823648))
    static let metersPerCupUK = UnitFrequency(symbol: NSLocalizedString("m/cup (UK)", comment: "metersPerCupUK symbol"), converter: UnitConverterLinear(coefficient: 28413.120592))
    static let metersPerFluidOunceUS = UnitFrequency(symbol: NSLocalizedString("m/fluid ounce (US)", comment: "metersPerFluidOunceUS symbol"), converter: UnitConverterLinear(coefficient: 2957.3529564))
    static let metersPerFluidOunceUK = UnitFrequency(symbol: NSLocalizedString("m/fluid ounce (UK)", comment: "metersPerFluidOunceUK symbol"), converter: UnitConverterLinear(coefficient: 2841.3120592))
    static let literPerMeter = UnitFrequency(symbol: NSLocalizedString("L/m", comment: "literPerMeter symbol"), converter: UnitConverterLinear(coefficient: 100000))
    static let gallonUSPerMile = UnitFrequency(symbol: NSLocalizedString("gallon (US)/mi", comment: "gallonUSPerMile symbol"), converter: UnitConverterLinear(coefficient: 235.2145833))
    static let gallonUKPerMile = UnitFrequency(symbol: NSLocalizedString("gallon (UK)/mi", comment: "gallonUKPerMile symbol"), converter: UnitConverterLinear(coefficient: 282.48093631))
    static let gallonUSPer100Miles = UnitFrequency(symbol: NSLocalizedString("gallon (US)/100 mi", comment: "gallonUSPer100Mile symbol"), converter: UnitConverterLinear(coefficient: 2.352145833))
    static let gallonUKPer100Miles = UnitFrequency(symbol: NSLocalizedString("gallon (UK)/100 mi", comment: "gallonUKPer100Mile symbol"), converter: UnitConverterLinear(coefficient: 2.8248093631))
    
}

extension UnitIlluminance {
    static let centimeterCandle = UnitIlluminance(symbol: NSLocalizedString("cm•c", comment: "centimeterCandle symbol"), converter: UnitConverterLinear(coefficient: 10000))
    static let meterCandle = UnitIlluminance(symbol: NSLocalizedString("m•c", comment: "meterCandle symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let footCandle = UnitIlluminance(symbol: NSLocalizedString("ft•c", comment: "footCandle symbol"), converter: UnitConverterLinear(coefficient: 10.7639104167))
    static let phot = UnitIlluminance(symbol: NSLocalizedString("ph", comment: "phot symbol"), converter: UnitConverterLinear(coefficient: 10000))
    static let nox = UnitIlluminance(symbol: NSLocalizedString("nx", comment: "nox symbol"), converter: UnitConverterLinear(coefficient: 0.001))
    static let candelaSteradianPerSquareMeter = UnitIlluminance(symbol: NSLocalizedString("cd·sr/m²", comment: "candelaSteradianPerSquareMeter symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let lumenPerSquareMeter = UnitIlluminance(symbol: NSLocalizedString("lm/m²", comment: "lumenPerSquareMeter symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let lumenPerSquareCentimeter = UnitIlluminance(symbol: NSLocalizedString("lm/cm²", comment: "lumenPerSquareCentimeter symbol"), converter: UnitConverterLinear(coefficient: 10000))
    static let lumenPerSquareFoot = UnitIlluminance(symbol: NSLocalizedString("lm/ft²", comment: "lumenPerSquareFoot symbol"), converter: UnitConverterLinear(coefficient: 10.7639104167))
    static let wattPerSquareCentimeterAt555nm = UnitIlluminance(symbol: NSLocalizedString("W/cm²", comment: "wattPerSquareCentimeterAt555nm symbol"), converter: UnitConverterLinear(coefficient: 6830000))
}



extension UnitLength {
    static let microInch = UnitLength(symbol: NSLocalizedString("µin", comment: "microInch symbol"), converter: UnitConverterLinear(coefficient: 25.4e-9))
    static let rods = UnitLength(symbol: NSLocalizedString("rod", comment: "rods symbol"), converter: UnitConverterLinear(coefficient: 5.0292))
    static let chains = UnitLength(symbol: NSLocalizedString("chain", comment: "chains symbol"), converter: UnitConverterLinear(coefficient: 20.1168))
    static let links = UnitLength(symbol: NSLocalizedString("li", comment: "links symbol"), converter: UnitConverterLinear(coefficient: 0.201168))
    
    static let mo = UnitLength(symbol: NSLocalizedString("Mō", comment: "Mō symbol"), converter: UnitConverterLinear(coefficient: 0.0000303))
    static let rin = UnitLength(symbol: NSLocalizedString("Rin", comment: "Rin symbol"), converter: UnitConverterLinear(coefficient: 0.000303))
    static let bu = UnitLength(symbol: NSLocalizedString("Bu", comment: "Bu symbol"), converter: UnitConverterLinear(coefficient: 0.00303))
    static let cun = UnitLength(symbol: NSLocalizedString("Cun", comment: "Cun symbol"), converter: UnitConverterLinear(coefficient: 0.0303))
    static let shaku = UnitLength(symbol: NSLocalizedString("Shaku", comment: "Shaku symbol"), converter: UnitConverterLinear(coefficient: 0.303))
    static let ken = UnitLength(symbol: NSLocalizedString("Ken", comment: "Ken symbol"), converter: UnitConverterLinear(coefficient: 1.818))
    static let jo = UnitLength(symbol: NSLocalizedString("Jō", comment: "Jō symbol"), converter: UnitConverterLinear(coefficient: 3.030))
    static let cho = UnitLength(symbol: NSLocalizedString("Chō", comment: "Chō symbol"), converter: UnitConverterLinear(coefficient: 109.1))
    static let ri = UnitLength(symbol: NSLocalizedString("Ri", comment: "Ri symbol"), converter: UnitConverterLinear(coefficient: 3927))
}

extension UnitMass {
    static let longTons = UnitMass(symbol: NSLocalizedString("ton (long)", comment: "longTons symbol"), converter: UnitConverterLinear(coefficient: 1016.0469088))
    static let dalton = UnitMass(symbol: NSLocalizedString("Da", comment: "dalton symbol"), converter: UnitConverterLinear(coefficient: 1.660530000001e-27))
    static let hundredweightUS = UnitMass(symbol: NSLocalizedString("hundredweight (US)", comment: "hundredweightUS symbol"), converter: UnitConverterLinear(coefficient: 45.35923699999))
    static let hundredweightUK = UnitMass(symbol: NSLocalizedString("hundredweight (UK)", comment: "hundredweightUK symbol"), converter: UnitConverterLinear(coefficient: 50.80234543999))
    static let quartertUS = UnitMass(symbol: NSLocalizedString("quarter (US)", comment: "quarterUS symbol"), converter: UnitConverterLinear(coefficient: 11.33980925))
    static let quartertUK = UnitMass(symbol: NSLocalizedString("quarter (UK)", comment: "quarterUK symbol"), converter: UnitConverterLinear(coefficient: 12.70058636))
    static let stoneUS = UnitMass(symbol: NSLocalizedString("st (US)", comment: "stoneUS symbol"), converter: UnitConverterLinear(coefficient: 5.669904625))
    static let stoneUK = UnitMass(symbol: NSLocalizedString("st (UK)", comment: "stoneUK symbol"), converter: UnitConverterLinear(coefficient: 6.35029318))
    static let grain = UnitMass(symbol: NSLocalizedString("gr", comment: "grain symbol"), converter: UnitConverterLinear(coefficient: 0.00006479891000017))
    
    static let mo = UnitMass(symbol: NSLocalizedString("Mō", comment: "Mō symbol"), converter: UnitConverterLinear(coefficient: 0.00000375))
    static let rin = UnitMass(symbol: NSLocalizedString("Rin", comment: "Rin symbol"), converter: UnitConverterLinear(coefficient: 0.0000375))
    static let fun = UnitMass(symbol: NSLocalizedString("Fun", comment: "Fun symbol"), converter: UnitConverterLinear(coefficient: 0.000375))
    static let momme = UnitMass(symbol: NSLocalizedString("Momme", comment: "momme symbol"), converter: UnitConverterLinear(coefficient: 0.00375))
    static let hyakume = UnitMass(symbol: NSLocalizedString("Hyakume", comment: "Hyakume symbol"), converter: UnitConverterLinear(coefficient: 0.375))
    static let kin = UnitMass(symbol: NSLocalizedString("Kin", comment: "Kin symbol"), converter: UnitConverterLinear(coefficient: 0.6))
    static let kan = UnitMass(symbol: NSLocalizedString("Kan", comment: "kan symbol"), converter: UnitConverterLinear(coefficient: 3.75))
    static let maru = UnitMass(symbol: NSLocalizedString("Maru", comment: "Maru symbol"), converter: UnitConverterLinear(coefficient: 30))
    static let tan = UnitMass(symbol: NSLocalizedString("Tan", comment: "Tan symbol"), converter: UnitConverterLinear(coefficient: 60))
}

extension UnitPressure {
    static let pascals = UnitMass(symbol: NSLocalizedString("Pa", comment: "pascals symbol"), converter: UnitConverterLinear(coefficient: 1))
    static let dynesPerSquareCentimeter = UnitMass(symbol: NSLocalizedString("dyn/cm²", comment: "dynes per square centimeter symbol"), converter: UnitConverterLinear(coefficient: 0.1))
    static let ksi = UnitMass(symbol: NSLocalizedString("ksi", comment: "ksi symbol"), converter: UnitConverterLinear(coefficient: 6894757.293178))
    static let torr = UnitMass(symbol: NSLocalizedString("Torr", comment: "torr symbol"), converter: UnitConverterLinear(coefficient: 133.3223684211))
    static let technicalAtmosphere = UnitMass(symbol: NSLocalizedString("at", comment: "technicalAtmosphere symbol"), converter: UnitConverterLinear(coefficient: 98066.5))
    static let standardAtmosphere = UnitMass(symbol: NSLocalizedString("atm", comment: "standardAtmosphere symbol"), converter: UnitConverterLinear(coefficient: 101325))
    static let barye = UnitMass(symbol: NSLocalizedString("Ba", comment: "barye symbol"), converter: UnitConverterLinear(coefficient: 0.1))
    static let meterOfSeaWater = UnitMass(symbol: NSLocalizedString("msw", comment: "meterOfSeaWater symbol"), converter: UnitConverterLinear(coefficient: 10000))
    static let meterOfWater = UnitMass(symbol: NSLocalizedString("mAq", comment: "meterOfWater symbol"), converter: UnitConverterLinear(coefficient: 9806.38))
    
}

extension UnitSpeed {
    static let kilometerPerSecond = UnitSpeed(symbol: NSLocalizedString("km/s", comment: "kilometerPerSecond symbol"), converter: UnitConverterLinear(coefficient: 1000))
    static let kilometerPerMinute = UnitSpeed(symbol: NSLocalizedString("km/min", comment: "kilometerPerMinute symbol"), converter: UnitConverterLinear(coefficient: 16.666667))
    static let feetPerHour = UnitSpeed(symbol: NSLocalizedString("ft/h", comment: "feetPerHour symbol"), converter: UnitConverterLinear(coefficient: 0.0000846667))
    static let feetPerMinute = UnitSpeed(symbol: NSLocalizedString("ft/min", comment: "feetPerMinute symbol"), converter: UnitConverterLinear(coefficient: 0.00508))
    static let feetPerSecond = UnitSpeed(symbol: NSLocalizedString("ft/s", comment: "feetPerSecond symbol"), converter: UnitConverterLinear(coefficient: 0.3048))
    static let milePerSecond = UnitSpeed(symbol: NSLocalizedString("mps", comment: "milePerSecond symbol"), converter: UnitConverterLinear(coefficient: 1609.344))
    static let mach = UnitSpeed(symbol: NSLocalizedString("M", comment: "Mach symbol"), converter: UnitConverterLinear(coefficient: 295.0464))
    
}

extension UnitTemperature {
    static let rankine = UnitTemperature(symbol: NSLocalizedString("°R", comment: "rankine symbol"), converter: UnitConverterLinear(coefficient: 0.5555555555556))
    static let reaumur = UnitTemperature(symbol: NSLocalizedString("°Re", comment: "reaumur symbol"), converter: UnitConverterLinear(coefficient: 274.4))
}

extension UnitVolume {
    static let barrelOil = UnitVolume(symbol: NSLocalizedString("bbl", comment: "barrelOil symbol"), converter: UnitConverterLinear(coefficient: 158.987294928))
    static let barrelUS = UnitVolume(symbol: NSLocalizedString("bl (US)", comment: "barrelUS symbol"), converter: UnitConverterLinear(coefficient: 119.240471196))
    static let barrelUK = UnitVolume(symbol: NSLocalizedString("bl (UK)", comment: "barrelUK symbol"), converter: UnitConverterLinear(coefficient: 163.65924))
    static let cupsUK = UnitVolume(symbol: NSLocalizedString("cup (UK)", comment: "cupsUK symbol"), converter: UnitConverterLinear(coefficient: 0.284130625))
    static let tablespoonsMetric = UnitVolume(symbol: NSLocalizedString("tbsp. (metric)", comment: "tablespoonsMetric symbol"), converter: UnitConverterLinear(coefficient: 0.015))
    static let teaspoonsMetric = UnitVolume(symbol: NSLocalizedString("tsp. (metric)", comment: "teaspoonsMetric symbol"), converter: UnitConverterLinear(coefficient: 0.005))
    
    static let sai = UnitVolume(symbol: NSLocalizedString("Sai", comment: "Sai symbol"), converter: UnitConverterLinear(coefficient: 0.001804))
    static let shaku = UnitVolume(symbol: NSLocalizedString("Shaku", comment: "Shaku symbol"), converter: UnitConverterLinear(coefficient: 0.01804))
    static let go = UnitVolume(symbol: NSLocalizedString("Gō", comment: "Gō symbol"), converter: UnitConverterLinear(coefficient: 0.1804))
    static let sho = UnitVolume(symbol: NSLocalizedString("Shō", comment: "Shō symbol"), converter: UnitConverterLinear(coefficient: 1.804))
    static let to = UnitVolume(symbol: NSLocalizedString("To", comment: "To symbol"), converter: UnitConverterLinear(coefficient: 18.04))
    static let koku = UnitVolume(symbol: NSLocalizedString("Koku", comment: "Koku symbol"), converter: UnitConverterLinear(coefficient: 180.4))
}
