//
//  VcAutoChannelDataResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 10.01.26.
//

import Foundation

public struct VcAutoChannelDataResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let sequenceNumber: Int
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
    public let creatingDate: Date
    public let knxMainGroup: Int
    public let authorizedUsers: [String]

    public init(id: UUID,
                sequenceNumber: Int,
                autoChannelNameVisu: String,
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
                creatingDate: Date,
                knxMainGroup: Int,
                authorizedUsers: [String])
    {
        self.id = id
        self.sequenceNumber = sequenceNumber
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
        self.creatingDate = creatingDate
        self.knxMainGroup = knxMainGroup
        self.authorizedUsers = authorizedUsers
    }
}
