//
//  BaosDeviceAutoChannelValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 13.01.26.
//

import Foundation

public struct BaosDeviceAutoChannelValuesResponseDTO: Codable, @unchecked Sendable {
    
    // GV.AutoParam
    public let limitSun: Int
    public let limitSmile: Int
    public let limitCloud: Int
    public let delaySun: Int
    public let delaySmile: Int
    public let delayCloud: Int
    
    // GV.Temp/H/C
    public let tempAutoOnOff: Bool
    public let tempAutoLimitOn: Int
    public let tempAutoLimitOff: Int
    public let heatingSupportOnOff: Bool
    public let heatingSupportTempLimit: Int
    public let coolingSupportOnOff: Bool
    public let coolingSupportTempLimit: Int
    public let brightnessAutoOnOff: Bool
    
    // GV.Wind/I/R
    public let limitWindAlarm: Int
    public let hysteresisWindAlarm: Int
    public let offDelayWindAlarm: Int
    public let limitTempIce: Int
    public let hysteresisTempIce: Int
    public let stateResetIce: Bool
    public let delayOnRain: Int
    public let delayOffRain: Int
    
    public init(limitSun: Int,
                limitSmile: Int,
                limitCloud: Int,
                delaySun: Int,
                delaySmile: Int,
                delayCloud: Int,
                tempAutoOnOff: Bool,
                tempAutoLimitOn: Int,
                tempAutoLimitOff: Int,
                heatingSupportOnOff: Bool,
                heatingSupportTempLimit: Int,
                coolingSupportOnOff: Bool,
                coolingSupportTempLimit: Int,
                brightnessAutoOnOff: Bool,
                limitWindAlarm: Int,
                hysteresisWindAlarm: Int,
                offDelayWindAlarm: Int,
                limitTempIce: Int,
                hysteresisTempIce: Int,
                stateResetIce: Bool,
                delayOnRain: Int,
                delayOffRain: Int)
    {
        self.limitSun = limitSun
        self.limitSmile = limitSmile
        self.limitCloud = limitCloud
        self.delaySun = delaySun
        self.delaySmile = delaySmile
        self.delayCloud = delayCloud
        self.tempAutoOnOff = tempAutoOnOff
        self.tempAutoLimitOn = tempAutoLimitOn
        self.tempAutoLimitOff = tempAutoLimitOff
        self.heatingSupportOnOff = heatingSupportOnOff
        self.heatingSupportTempLimit = heatingSupportTempLimit
        self.coolingSupportOnOff = coolingSupportOnOff
        self.coolingSupportTempLimit = coolingSupportTempLimit
        self.brightnessAutoOnOff = brightnessAutoOnOff
        self.limitWindAlarm = limitWindAlarm
        self.hysteresisWindAlarm = hysteresisWindAlarm
        self.offDelayWindAlarm = offDelayWindAlarm
        self.limitTempIce = limitTempIce
        self.hysteresisTempIce = hysteresisTempIce
        self.stateResetIce = stateResetIce
        self.delayOnRain = delayOnRain
        self.delayOffRain = delayOffRain
    }
}
