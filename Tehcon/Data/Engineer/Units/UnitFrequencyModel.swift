//
//  UnitFrequencyModel.swift
//  HandbookPlus
//
//  Created by Sergey Volkov on 15.01.2021.
//

import Foundation

class UnitFrequencyModel: UnitTypeCalcProtocol {
    var id = UUID()
    var unitType = MyUnitCalcType.UnitOfFrequency
    var title = NSLocalizedString("Frequency", comment: "unit type title")
    var icon = "waveform.path"
    var typeDescription = NSLocalizedString("Frequency is the number of occurrences of a repeating event per unit of time. The period is the duration of one cycle in a repeating event, so the period is the reciprocal of the frequency.\nAny wave pattern can be described in terms of sinusoidal components. The wavelength of a sinusoidal wave is the distance over which the wave’s shape repeats. For periodic waves, frequency has an inverse relationship to the concept of wavelength; simply, frequency is inversely proportional to wavelength. The frequency f is equal to the phase velocity v of the wave divided by the wavelength λ of the wave: f = v/λ or λ = v/f.\nIn the case of electromagnetic radiation in a vacuum—the speed v is the speed of light, about 3·10⁸ m/s. Thus the wavelength of a 100 MHz FM radio wave is about: 3·10⁸ m/s divided by 10⁸ Hz = 3 meters.\nFor sound waves in air, the speed of sound is 343 m/s. The wavelength of a tuning fork (440 Hz) is thus equal to approximately 0.78 m.\n\nIn SI units, the unit of frequency is the hertz (Hz). 1 Hz means that an event repeats once every second. A previous name for this unit was a cycle per second. The SI unit of wavelength is the meter.", comment: "unit type description")
    var units: [UnitCalcModel] = [
        UnitCalcModel(title: NSLocalizedString("Hertz", comment: "hertz title"),
                      unit: UnitFrequency.hertz,
                      unitDescription: NSLocalizedString("A hertz (Hz) is the SI unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds and mechanical vibrations (approximately 20 Hz to 20 kHz) and electromagnetic radiation (radio waves, light, gamma rays — approximately 20 kHz to 200 THz). In computing, the clock rate of central processing units is expressed in megahertz or gigahertz and put on their labels.", comment: "hertz description")),
        UnitCalcModel(title: NSLocalizedString("Nanohertz", comment: "nanohertz title"),
                      unit: UnitFrequency.nanohertz,
                      unitDescription: NSLocalizedString("A nanohertz (nHz) is a decimal fraction of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays). Nanohertz is used to describe frequency instability or how precisely frequency of a generator can be adjusted.", comment: "Nanohertz description")),
        UnitCalcModel(title: NSLocalizedString("Microhertz", comment: "microhertz title"),
                      unit: UnitFrequency.microhertz,
                      unitDescription: NSLocalizedString("A microhertz (μHz) is a decimal fraction of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays). Microhertz is used to describe frequency instability or how precisely frequency of a generator can be adjusted.", comment: "microhertz description")),
        UnitCalcModel(title: NSLocalizedString("Millihertz", comment: "millihertz title"),
                      unit: UnitFrequency.millihertz,
                      unitDescription: NSLocalizedString("A millihertz (mHz) is a decimal fraction of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays). Infrasound waves in the frequency range 10 to 20000 millihertz are used for monitoring earthquakes and in studies of the mechanics of heart.", comment: "millihertz description")),
        UnitCalcModel(title: NSLocalizedString("Kilohertz", comment: "kilohertz title"),
                      unit: UnitFrequency.kilohertz,
                      unitDescription: NSLocalizedString("A kilohertz (kHz) is a decimal multiple of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays).", comment: "kilohertz description")),
        UnitCalcModel(title: NSLocalizedString("Megahertz", comment: "megahertz title"),
                      unit: UnitFrequency.megahertz,
                      unitDescription: NSLocalizedString("A megahertz (MHz) is a decimal multiple of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays).", comment: "megahertz description")),
        UnitCalcModel(title: NSLocalizedString("Gigahertz", comment: "megahertz title"),
                      unit: UnitFrequency.gigahertz,
                      unitDescription: NSLocalizedString("A gigahertz (GHz) is a decimal multiple of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays).", comment: "gigahertz description")),
        UnitCalcModel(title: NSLocalizedString("Terahertz", comment: "terahertz title"),
                      unit: UnitFrequency.terahertz,
                      unitDescription: NSLocalizedString("A terahertz (THz) is a decimal multiple of the SI derived unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds, mechanical vibrations, and electromagnetic radiation (radio waves, light, and gamma rays).", comment: "terahertz description")),
        UnitCalcModel(title: NSLocalizedString("Frames per second", comment: "framesPerSecond title"),
                      unit: UnitFrequency.framesPerSecond,
                      unitDescription: NSLocalizedString("Frames per second (FPS) or frame rate is the frequency (rate) at which consecutive images called frames appear on a display. The term applies equally to film and video cameras, computer graphics, and motion capture systems. Frame rate may also be called the frame frequency, and be expressed in hertz.", comment: "framesPerSecond description")),
        UnitCalcModel(title: NSLocalizedString("Cycles per second", comment: "cyclesPerSecond title"),
                      unit: UnitFrequency.cyclesPerSecond,
                      unitDescription: NSLocalizedString("A cycle per second is another name of the SI unit of frequency hertz defined as the number of cycles per second of a periodic phenomenon. This unit is used to describe the frequency of sounds and mechanical vibrations (approximately 20 Hz to 20 kHz) and electromagnetic radiation (radio waves, light, gamma rays — approximately 20 kHz to 200 THz). In computing, the clock rate of central processing units and computer buses is expressed in megahertz or gigahertz..", comment: "cyclesPerSecond description")),
    ]
}
