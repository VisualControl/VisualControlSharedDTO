//
//  BaosAutoChannelValues2RequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.01.26.
//

import Foundation

public struct BaosAutoChannelValues2RequestDTO: Codable, @unchecked Sendable {
    
    // SV.Temp/H/C
    public let tempAutoOnOff: Bool
    public let tempAutoLimitOn: Int
    public let tempAutoLimitOff: Int
    public let heatingSupportOnOff: Bool
    public let heatingSupportTempLimit: Int
    public let coolingSupportOnOff: Bool
    public let coolingSupportTempLimit: Int
    public let brightnessAutoOnOff: Bool
    
    public init(tempAutoOnOff: Bool,
                tempAutoLimitOn: Int,
                tempAutoLimitOff: Int,
                heatingSupportOnOff: Bool,
                heatingSupportTempLimit: Int,
                coolingSupportOnOff: Bool,
                coolingSupportTempLimit: Int,
                brightnessAutoOnOff: Bool)
    {
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
