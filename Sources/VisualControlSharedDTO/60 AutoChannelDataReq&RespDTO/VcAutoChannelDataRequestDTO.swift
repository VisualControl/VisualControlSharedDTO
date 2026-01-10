//
//  VcAutoChannelDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 10.01.26.
//

import Foundation

public struct VcAutoChannelDataRequestDTO: Codable, @unchecked Sendable {
    
    public let autoChannelNameVisu: String
    public let autoChannelNameBaos: String
    public let choiceSun: Bool
    public let choiceSmile: Bool
    public let choiceCloud: Bool
    public let choiceTempAuto: Bool
    public let choiceTimerAuto: Bool
    public let choiceTimerUpDown: Bool
    public let choiceHeatSupport: Bool
    public let choiceCoolSupport: Bool
    public let choiceWindAlarm: Bool
    public let choiceIceAlarm: Bool
    public let choiceRainAlarm: Bool
    public let choiceHailAlarm: Bool
    public let knxMainGroup: Int
    public let authorizedUsers: [String]

    public init(autoChannelNameVisu: String,
                autoChannelNameBaos: String,
                choiceSun: Bool,
                choiceSmile: Bool,
                choiceCloud: Bool,
                choiceTempAuto: Bool,
                choiceTimerAuto: Bool,
                choiceTimerUpDown: Bool,
                choiceHeatSupport: Bool,
                choiceCoolSupport: Bool,
                choiceWindAlarm: Bool,
                choiceIceAlarm: Bool,
                choiceRainAlarm: Bool,
                choiceHailAlarm: Bool,
                knxMainGroup: Int,
                authorizedUsers: [String])
    {
        self.autoChannelNameVisu = autoChannelNameVisu
        self.autoChannelNameBaos = autoChannelNameBaos
        self.choiceSun = choiceSun
        self.choiceSmile = choiceSmile
        self.choiceCloud = choiceCloud
        self.choiceTempAuto = choiceTempAuto
        self.choiceTimerAuto = choiceTimerAuto
        self.choiceTimerUpDown = choiceTimerUpDown
        self.choiceHeatSupport = choiceHeatSupport
        self.choiceCoolSupport = choiceCoolSupport
        self.choiceWindAlarm = choiceWindAlarm
        self.choiceIceAlarm = choiceIceAlarm
        self.choiceRainAlarm = choiceRainAlarm
        self.choiceHailAlarm = choiceHailAlarm
        self.knxMainGroup = knxMainGroup
        self.authorizedUsers = authorizedUsers
    }
}
