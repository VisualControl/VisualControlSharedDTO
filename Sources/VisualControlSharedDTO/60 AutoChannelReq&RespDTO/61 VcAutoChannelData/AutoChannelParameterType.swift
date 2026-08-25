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
    case error
    
    public var englishParameterName: String {
        
        switch self {
        case .limitSun: "Limit Sun"
        case .limitSmile: "Limit Smile"
        case .limitCloud: "Limit Cloud"
        case .delaySun: "Switch-on delay for Limit Sun"
        case .delaySmile: "Switch-on delay for Limit Smile"
        case .delayCloud: "Switch-on delay for Limit Cloud"
        case .tempAutoOnOff: "Temperature Automatic Switch"
        case .tempAutoLimitOn: "Temperature Limit On"
        case .tempAutoLimitOff: "Temperature Limit Off"
        case .heatingSupportOnOff: "Heating Support Switch"
        case .heatingSupportTempLimit: "Temperature Limit for Heating Support"
        case .coolingSupportOnOff: "Cooling Support Switch"
        case .coolingSupportTempLimit: "Temperature Limit for Cooling Support"
        case .brightnessAutoOnOff: "Brightness Automatic Switch"
        case .limitWindAlarm: "Wind Alarm Limit"
        case .hysteresisWindAlarm: "Wind Alarm Hysteresis"
        case .offDelayWindAlarm: "Switch-off delay for Wind Alarm"
        case .limitTempIce: "Ice Alarm Limit"
        case .hysteresisTempIce: "Ice Alarm Hysteresis"
        case .stateIceAlarm: "Current State of Ice Alarm"
        case .delayOnRain: "Switch-on delay for Precipitation"
        case .delayOffRain: "Switch-off delay for Precipitation"
        case .error: "Error (unknown)"
        }
        
    }
    
    
    public var germanParameterName: String {
        
        switch self {
        case .limitSun: "Grenzwert Sonne"
        case .limitSmile: "Grenzwert Heiter"
        case .limitCloud: "Grenzwert Wolke"
        case .delaySun: "Einschaltverzögerung für Grenzwert Sonne"
        case .delaySmile: "Einschaltverzögerung für Grenzwert Heiter"
        case .delayCloud: "Einschaltverzögerung für Grenzwert Wolke"
        case .tempAutoOnOff: "Temperatur Automatik Schalter"
        case .tempAutoLimitOn: "Grenzwert für Temperaturautomatik EIN"
        case .tempAutoLimitOff: "Grenzwert für Temperaturautomatik AUS"
        case .heatingSupportOnOff: "Schalter für Heizunterstützung"
        case .heatingSupportTempLimit: "Temperatur-Grenzwert für Heizunterstützung"
        case .coolingSupportOnOff: "Schalter für Kühlunterstützung"
        case .coolingSupportTempLimit: "Temperatur-Grenzwert für Kühlunterstützung"
        case .brightnessAutoOnOff: "Schalter für Sonnenautomatik"
        case .limitWindAlarm: "Grenzwert für Windalarm"
        case .hysteresisWindAlarm: "Hysterese für Windalarm"
        case .offDelayWindAlarm: "Ausschaltverzögerung für Windalarm"
        case .limitTempIce: "Temperaturgrenzwert für Eisalarm"
        case .hysteresisTempIce: "Hysterese für Eisalarm"
        case .stateIceAlarm: "Aktueller Status des Eisalarms"
        case .delayOnRain: "Einschaltverzögerung bei Niederschlag"
        case .delayOffRain: "Ausschaltverzögerung bei Niederschlag"
        case .error: "Unbekannter Fehler"
        }
        
    }
    
}
