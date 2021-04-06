//
//  UnitModelProtocol.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

protocol UnitTypeCalcProtocol {
    var id: UUID {get}
    var unitType: MyUnitCalcType {get}
    var title: String {get}
    var icon: String {get}
    var typeDescription: String {get}
    var units: [UnitCalcModel] {get}
}
