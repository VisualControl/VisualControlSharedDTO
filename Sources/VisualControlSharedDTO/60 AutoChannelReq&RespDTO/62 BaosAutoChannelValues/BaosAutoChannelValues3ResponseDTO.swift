//
//  BaosAutoChannelValues3ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.01.26.
//

import Foundation

public struct BaosAutoChannelValues3ResponseDTO: Codable, @unchecked Sendable {
    
    // GV.Wind/I/R
    public let limitWindAlarm: Int
    public let hysteresisWindAlarm: Int
    public let offDelayWindAlarm: Int
    public let limitTempIce: Int
    public let hysteresisTempIce: Int
    public let stateResetIce: Bool
    public let delayOnRain: Int
    public let delayOffRain: Int
    
    public init(limitWindAlarm: Int,
                hysteresisWindAlarm: Int,
                offDelayWindAlarm: Int,
                limitTempIce: Int,
                hysteresisTempIce: Int,
                stateResetIce: Bool,
                delayOnRain: Int,
                delayOffRain: Int)
    {
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
