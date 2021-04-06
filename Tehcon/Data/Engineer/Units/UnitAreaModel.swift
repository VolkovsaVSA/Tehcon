//
//  UnitAreaModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitAreaModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfArea
    var title = NSLocalizedString("Area", comment: "UnitCalcModel")
    var icon = "square.grid.3x3"
    var typeDescription = NSLocalizedString("Area is the amount of space a two-dimensional (flat or uneven) surface takes up. Every unit of length has a corresponding unit of area. Thus, areas can be measured in square meters (m²), square centimeters (cm²), square millimeters (mm²), square kilometers (km²), square feet (ft²), square yards (yd²), square miles (mi²), etc. The SI unit of area is the square meter, which is considered an SI derived unit.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Square meters", comment: "squareMeters title"),
                      unit: UnitArea.squareMeters,
                      unitDescription: NSLocalizedString("A square meter or square metre (British spelling) is an SI derived unit of area. Its symbol is m². The square meter is defined as the area of a square whose sides are one meter. The square meter is derived from the SI base unit of the meter, which is defined as “the length of the path traveled by light in vacuum during a time interval of 1⁄299,792,458 of a second.", comment: "squareMeters unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square nanometers", comment: "squareNanometers title"),
                      unit: UnitArea.squareNanometers,
                      unitDescription: NSLocalizedString("A square nanometer is a decimal fraction of the SI derived unit square meter and is equal to 1·10⁻¹⁸ m². Its symbol is nm².", comment: "squareNanometers unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square micrometers", comment: "squareMicrometers title"),
                      unit: UnitArea.squareMicrometers,
                      unitDescription: NSLocalizedString("A square micrometer is a decimal fraction of the SI derived unit square meter and is equal to 1·10⁻¹² m². Its symbol is μm².", comment: "squareMicrometers unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square millimeters", comment: "squareMillimeters title"),
                      unit: UnitArea.squareMillimeters,
                      unitDescription: NSLocalizedString("A square millimeter is a decimal fraction of the SI derived unit square meter and is equal to 0.000001 m². Its symbol is mm².", comment: "squareMillimeters unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square centimeters", comment: "squareCentimeters title"),
                      unit: UnitArea.squareCentimeters,
                      unitDescription: NSLocalizedString("A square centimeter is a decimal fraction of the SI derived unit square meter and is equal to 0.0001 m². Its symbol is cm².", comment: "squareCentimeters unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square kilometers", comment: "squareKilometers title"),
                      unit: UnitArea.squareKilometers,
                      unitDescription: NSLocalizedString("A square kilometer is a decimal multiple of the SI derived unit square meter and is equal to 1,000,000 m². Its symbol is km².", comment: "squareKilometers unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square megameters", comment: "squareMegameters title"),
                      unit: UnitArea.squareMegameters,
                      unitDescription: NSLocalizedString("A square megameter is a decimal multiple of the SI derived unit square meter and is equal to 1,000,000,000,000 m². Its symbol is Mm².", comment: "squareMegameters unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square inches", comment: "squareInches title"),
                      unit: UnitArea.squareInches,
                      unitDescription: NSLocalizedString("A square inch is an Imperial and US customary unit of area and defined as the area of a square with sides of one inch. Its symbol is in² or sq in. 1 square inch is equal to 6.4516 sq cm.", comment: "squareInches unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square foot", comment: "squareFeet title"),
                      unit: UnitArea.squareFeet,
                      unitDescription: NSLocalizedString("A square foot is an Imperial and US customary unit of area and defined as the area of a square with sides of one foot. Its symbol is ft² or sq ft. 1 sq ft is equal to 0.093 sq m.", comment: "squareFeet unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square yards", comment: "squareYards title"),
                      unit: UnitArea.squareYards,
                      unitDescription: NSLocalizedString("A square yard is an Imperial and US customary unit of area and defined as the area of a square with sides of one yard. Its symbol is yd² or sq yd. 1 sq yd is equal to 0.836 sq m.", comment: "squareYards unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Square miles", comment: "squareMiles title"),
                      unit: UnitArea.squareMiles,
                      unitDescription: NSLocalizedString("A square mile is an Imperial and US customary unit of area and defined as the area of a square whose sides are one statute mile. Its symbol is mi² or sq mi. 1 sq mi is equal to 2.59 sq km.", comment: "squareMiles unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Acres", comment: "acres title"),
                      unit: UnitArea.acres,
                      unitDescription: NSLocalizedString("An acre is an Imperial and US customary unit of land area and defined as the area of 1/640 sq miles. 640 acres make up one square mile. Its symbol is ac. 1 ac is equal to 0.4 ha.", comment: "acres unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Ares", comment: "ares title"),
                      unit: UnitArea.ares,
                      unitDescription: NSLocalizedString("An are is a non-SI metric unit of area and defined as 100 square meters. It is primarily used in the measurements of land area. Its symbol is a.", comment: "ares unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Hectares", comment: "hectares title"),
                      unit: UnitArea.hectares,
                      unitDescription: NSLocalizedString("A hectare is a non-SI metric unit of area and defined as 10,000 square meters or 100 ares. It is primarily used in the measurements of land area. Its symbol is ha.", comment: "hectares unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Rood (imperial)", comment: "Rood title"),
                      unit: UnitArea.rood,
                      unitDescription: NSLocalizedString("Rood is an Old English unit of area, equal to ¼ of an acre or 0.1 hectares. “Rood” is an archaic word for “pole”. It is also used as a measurement of length.", comment: "Rood unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Township (imperial)", comment: "township title"),
                      unit: UnitArea.township,
                      unitDescription: NSLocalizedString("A township, which is sometimes called Congressional township, is defined as a square unit of land with sides of six US Survey miles. It is primarily used by the United States Public Land Survey System. One township is equal to 36 sq miles or 93.24 sq km. Each township is divided into 36 one-square-mile sections.", comment: "township unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Homestead (imperial)", comment: "homestead title"),
                      unit: UnitArea.homestead,
                      unitDescription: NSLocalizedString("Homestead is a unit of area of land covering 160 acres, 65 hectares or 0.65 km². It is also called a quarter-section in the USA.", comment: "homestead unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Section (imperial)", comment: "Section title"),
                      unit: UnitArea.section,
                      unitDescription: NSLocalizedString("A section is defined as a square unit of land with an area of one square mile. It is primarily used by the United States Public Land Survey System. 36 sections make up one US Survey township. One section is equal to 1 sq mile or 2.59 sq km.", comment: "Section unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Tsubo (japanese)", comment: "tsubo title"),
                      unit: UnitArea.tsubo,
                      unitDescription: NSLocalizedString("Tsubo is a Japanese unit of areal measure, roughly 3.3 m² or 35.5 ft², equivalent to the area of two tatami mats.", comment: "tsubo unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Shaku (japanese)", comment: "shaku title"),
                      unit: UnitArea.shaku,
                      unitDescription: NSLocalizedString("Shaku (勺) is a Japanese unit of area equal to 0.1 go", comment: "shaku unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Gō (japanese)", comment: "Gō title"),
                      unit: UnitArea.go,
                      unitDescription: NSLocalizedString("Go (合) is a Japanese unit of area equal to 10 shaku (勺).", comment: "Gō unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Jō (japanese)", comment: "Jō title"),
                      unit: UnitArea.jo,
                      unitDescription: NSLocalizedString("Jo (畳) is a Japanese unit of area equal to 5 go (合).", comment: "Jō unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Se (japanese)", comment: "Se title"),
                      unit: UnitArea.se,
                      unitDescription: NSLocalizedString("Se (畝) is a Japanese unit of area equal to 30 tsubo (坪).", comment: "Se unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Tan (japanese)", comment: "Tan title"),
                      unit: UnitArea.tan,
                      unitDescription: NSLocalizedString("Tan (段, 反) is a Japanese unit of area equal to 10 se (畝).", comment: "Tan unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Chō (japanese)", comment: "Chō title"),
                      unit: UnitArea.cho,
                      unitDescription: NSLocalizedString("Cho (町, 町歩) is a Japanese unit of area equal to 10 tan (段, 反).", comment: "Chō unitDescription")),
    ]
    
}
