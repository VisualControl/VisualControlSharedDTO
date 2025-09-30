//
//  Untitled.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 29.09.25.
//

import Foundation

public struct VcHeaderDataRequestDTO: Codable, @unchecked Sendable {
    
    public let knxMainGroup: Int
    /*public let dateReceive: Bool
    public let timeReceive: Bool
    public let qtyWindSpeedReceive: Int
    public let nameWindSpeed1: String
    public let nameWindSpeed2: String
    public let nameWindSpeed3: String
    public let nameWindSpeed4: String
    public let qtyWindDirectionReceive: Int
    public let nameWindDirection1: String
    public let nameWindDirection2: String
    public let nameWindDirection3: String
    public let nameWindDirection4: String
    public let qtyBrightnessReceive: Int
    public let nameBrightness1: String
    public let nameBrightness2: String
    public let nameBrightness3: String
    public let nameBrightness4: String
    public let nameBrightness5: String
    public let nameBrightness6: String
    public let nameBrightness7: String
    public let nameBrightness8: String
    public let qtySolarEnergyReceive: Int
    public let nameSolarEnergy1: String
    public let nameSolarEnergy2: String
    public let nameSolarEnergy3: String
    public let nameSolarEnergy4: String
    public let nameSolarEnergy5: String
    public let nameSolarEnergy6: String
    public let nameSolarEnergy7: String
    public let nameSolarEnergy8: String
    public let outTempReceive: Bool
    public let stateRainReceive: Bool
    public let stateIceReceive: Bool
    public let stateHailReceive: Bool
    public let dateAndTimeSend: Bool  */
    
    public init(knxMainGroup: Int
                /*dateReceive: Bool,
                timeReceive: Bool,
                qtyWindSpeedReceive: Int,
                nameWindSpeed1: String,
                nameWindSpeed2: String,
                nameWindSpeed3: String,
                nameWindSpeed4: String,
                qtyWindDirectionReceive: Int,
                nameWindDirection1: String,
                nameWindDirection2: String,
                nameWindDirection3: String,
                nameWindDirection4: String,
                qtyBrightnessReceive: Int,
                nameBrightness1: String,
                nameBrightness2: String,
                nameBrightness3: String,
                nameBrightness4: String,
                nameBrightness5: String,
                nameBrightness6: String,
                nameBrightness7: String,
                nameBrightness8: String,
                qtySolarEnergyReceive: Int,
                nameSolarEnergy1: String,
                nameSolarEnergy2: String,
                nameSolarEnergy3: String,
                nameSolarEnergy4: String,
                nameSolarEnergy5: String,
                nameSolarEnergy6: String,
                nameSolarEnergy7: String,
                nameSolarEnergy8: String,
                outTempReceive: Bool,
                stateRainReceive: Bool,
                stateIceReceive: Bool,
                stateHailReceive: Bool,
                dateAndTimeSend: Bool */
    )
    
    {
        self.knxMainGroup = knxMainGroup
        /*self.dateReceive = dateReceive
        self.timeReceive = timeReceive
        self.qtyWindSpeedReceive = qtyWindSpeedReceive
        self.nameWindSpeed1 = nameWindSpeed1
        self.nameWindSpeed2 = nameWindSpeed2
        self.nameWindSpeed3 = nameWindSpeed3
        self.nameWindSpeed4 = nameWindSpeed4
        self.qtyWindDirectionReceive = qtyWindDirectionReceive
        self.nameWindDirection1 = nameWindDirection1
        self.nameWindDirection2 = nameWindDirection2
        self.nameWindDirection3 = nameWindDirection3
        self.nameWindDirection4 = nameWindDirection4
        self.qtyBrightnessReceive = qtyBrightnessReceive
        self.nameBrightness1 = nameBrightness1
        self.nameBrightness2 = nameBrightness2
        self.nameBrightness3 = nameBrightness3
        self.nameBrightness4 = nameBrightness4
        self.nameBrightness5 = nameBrightness5
        self.nameBrightness6 = nameBrightness6
        self.nameBrightness7 = nameBrightness7
        self.nameBrightness8 = nameBrightness8
        self.qtySolarEnergyReceive = qtySolarEnergyReceive
        self.nameSolarEnergy1 = nameSolarEnergy1
        self.nameSolarEnergy2 = nameSolarEnergy2
        self.nameSolarEnergy3 = nameSolarEnergy3
        self.nameSolarEnergy4 = nameSolarEnergy4
        self.nameSolarEnergy5 = nameSolarEnergy5
        self.nameSolarEnergy6 = nameSolarEnergy6
        self.nameSolarEnergy7 = nameSolarEnergy7
        self.nameSolarEnergy8 = nameSolarEnergy8
        self.outTempReceive = outTempReceive
        self.stateRainReceive = stateRainReceive
        self.stateIceReceive = stateIceReceive
        self.stateHailReceive = stateHailReceive
        self.dateAndTimeSend = dateAndTimeSend */
    }
    
}
