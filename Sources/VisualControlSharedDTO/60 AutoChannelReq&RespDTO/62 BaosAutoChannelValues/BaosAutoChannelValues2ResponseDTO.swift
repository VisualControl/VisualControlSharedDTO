//
//  BaosAutoChannelValues2ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.01.26.
//

import Foundation

public struct BaosAutoChannelValues2ResponseDTO: Codable, @unchecked Sendable {
    
    // GV.Temp/H/C._
    public let baosDeviceValuesId: UUID // UUID of the Datapoint GV.Temp/H/C... or SV.Temp/H/C
    public let baosDpName: String
    public let tempAutoOnOff: Bool
    public let tempAutoLimitOn: Int
    public let tempAutoLimitOff: Int
    public let heatingSupportOnOff: Bool
    public let heatingSupportTempLimit: Int
    public let coolingSupportOnOff: Bool
    public let coolingSupportTempLimit: Int
    public let brightnessAutoOnOff: Bool
    
    public init(baosDeviceValuesId: UUID,
                baosDpName: String,
                tempAutoOnOff: Bool,
                tempAutoLimitOn: Int,
                tempAutoLimitOff: Int,
                heatingSupportOnOff: Bool,
                heatingSupportTempLimit: Int,
                coolingSupportOnOff: Bool,
                coolingSupportTempLimit: Int,
                brightnessAutoOnOff: Bool)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.baosDpName = baosDpName
        self.tempAutoOnOff = tempAutoOnOff
        self.tempAutoLimitOn = tempAutoLimitOn
        self.tempAutoLimitOff = tempAutoLimitOff
        self.heatingSupportOnOff = heatingSupportOnOff
        self.heatingSupportTempLimit = heatingSupportTempLimit
        self.coolingSupportOnOff = coolingSupportOnOff
        self.coolingSupportTempLimit = coolingSupportTempLimit
        self.brightnessAutoOnOff = brightnessAutoOnOff
    }
}
