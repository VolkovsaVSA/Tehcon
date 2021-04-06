//
//  UnitDurationModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitDurationModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfDuration
    var title = NSLocalizedString("Time", comment: "UnitCalcModel")
    var icon = "alarm"
    var typeDescription = NSLocalizedString("Time is a dimension in which a sequence of events can be ordered from the past through the present into the future. Time is also the measure of durations of events and the intervals between them. Time is also used to quantify the speed at which things change and objects move. The SI unit of time is one second. The second (s) is a unit of time and one of the seven SI base units. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom.", comment: "UnitTypeDescription")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Seconds", comment: "Seconds title"),
                      unit: UnitDuration.seconds,
                      unitDescription: NSLocalizedString("A second (s) is a unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom.", comment: "Seconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Years", comment: "Years title"),
                      unit: UnitDuration.year,
                      unitDescription: NSLocalizedString("A common year (y, yr) is is a unit of time equal to the orbital period of the Earth moving around the Sun. A calendar year in the Gregorian calendar, as well as in the Julian calendar, has either 365 (common year) or 366 (leap year) days. In astronomy, the Julian year is a unit of time, defined as 365.25 days of 86400 SI seconds each.", comment: "Years unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Months", comment: "Months title"),
                      unit: UnitDuration.month,
                      unitDescription: NSLocalizedString("A month is a unit of time, used with calendars. It is a natural period related to the motion of the Moon.", comment: "Months unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Weeks", comment: "Weeks title"),
                      unit: UnitDuration.week,
                      unitDescription: NSLocalizedString("A week is a non-SI unit of time. It is usually an interval equal to seven days. A week is the standard time period used for cycles of work days and rest days in most countries of the world.", comment: "Weeks unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Days", comment: "Days title"),
                      unit: UnitDuration.day,
                      unitDescription: NSLocalizedString("A day (d) is a non-SI unit of time. It is an interval equal to 24 hours. It can also mean a daytime, which is the consecutive period of time during which the Sun is above the horizon of a location.", comment: "Days unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Hours", comment: "Hours title"),
                      unit: UnitDuration.hours,
                      unitDescription: NSLocalizedString("An hour (h, hr) is a non-SI unit of measurement of time. One hour is equal to 60 minutes or 3,600 seconds.", comment: "Hours unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Minutes", comment: "Minutes title"),
                      unit: UnitDuration.minutes,
                      unitDescription: NSLocalizedString("A minute (min) is a non-SI unit of measurement of time. The minute is equal to 1/60 of an hour or 60 seconds.", comment: "Minutes unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Milliseconds", comment: "Milliseconds title"),
                      unit: UnitDuration.milliseconds,
                      unitDescription: NSLocalizedString("A millisecond (ms) is a decimal fraction of the second, which is the unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom.", comment: "Milliseconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Microseconds", comment: "Microseconds title"),
                      unit: UnitDuration.microseconds,
                      unitDescription: NSLocalizedString("A microsecond (µs) is a decimal fraction of the second, which is the unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom. ", comment: "Microseconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Nanoseconds", comment: "Nanoseconds title"),
                      unit: UnitDuration.nanoseconds,
                      unitDescription: NSLocalizedString("A nanosecond (ns) is a decimal fraction of the second, which is the unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom. ", comment: "Nanoseconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Picoseconds", comment: "Picoseconds title"),
                      unit: UnitDuration.picoseconds,
                      unitDescription: NSLocalizedString("A picosecond (ps) is a decimal fraction of the second, which is the unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom. ", comment: "Picoseconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Femtoseconds", comment: "Femtoseconds title"),
                      unit: UnitDuration.femtosecond,
                      unitDescription: NSLocalizedString("A femtosecond (fs) is a decimal fraction of the second, which is the unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom.", comment: "Femtoseconds unitDescription")),
        UnitCalcModel(title: NSLocalizedString("Attosecond", comment: "Attosecond title"),
                      unit: UnitDuration.attosecond,
                      unitDescription: NSLocalizedString("A attosecond (as) is a decimal fraction of the second, which is the unit of time and one of the seven SI base units. It is also a CGS unit of time. It is defined as the time taken by 9,192,631,770 cycles of radiation that comes from electrons moving between two energy levels of the caesium-133 atom. ", comment: "Attosecond unitDescription")),
    ]
}
