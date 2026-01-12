//
//  VcAutoChannelParametersEnum.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 11.01.26.
//

import Foundation

public enum AutoChannelParameterType: String, Codable {
    case limitSun
    case limitSmile
    case limitCloud
    case delaySun
    case delaySmile
    case delayCloud
    case tempAutoOnOff
    case tempAutoLimitOn
    case tempAutoLimitOff
    case heatingSupportOnOff
    case heatingSupportTempLimit
    case coolingSupportOnOff
    case coolingSupportTempLimit
    case brightnessAutoOnOff
    case limitWindAlarm
    case hysteresisWindAlarm
    case offDelayWindAlarm
    case limitTempIce
    case hysteresisTempIce
    case stateIceAlarm
    case delayOnRain
    case delayOffRain
}
