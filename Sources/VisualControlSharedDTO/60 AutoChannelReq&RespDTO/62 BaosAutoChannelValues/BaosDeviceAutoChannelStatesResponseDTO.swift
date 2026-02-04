//
//  BaosDeviceAutoChannelFeedbackResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 14.01.26.
//

import Foundation

public struct BaosDeviceAutoChannelStatesResponseDTO: Codable, @unchecked Sendable {
    
    public let currentStateAutoChannelEnglish: String
    public let currentStateAutoChannelGerman: String
    public let currentStateAutoSwitch: Bool
    public let currentStateAutoTimer: Bool
    public let currentStateGlobalRadiation: Bool
    public let currentStateSun: Bool
    public let currentStateShadow: Bool
    public let currentStateSmile: Bool
    public let currentStateCloud: Bool
    public let currentStateCoolingSupport: Bool
    public let currentStateHeatingSupport: Bool
    
    public init(currentStateAutoChannelEnglish: String,
                currentStateAutoChannelGerman: String,
                currentStateAutoSwitch: Bool,
                currentStateAutoTimer: Bool,
                currentStateGlobalRadiation: Bool,
                currentStateSun: Bool, currentStateShadow: Bool,
                currentStateSmile: Bool, currentStateCloud: Bool,
                currentStateCoolingSupport: Bool,
                currentStateHeatingSupport: Bool)
    {
        self.currentStateAutoChannelEnglish = currentStateAutoChannelEnglish
        self.currentStateAutoChannelGerman = currentStateAutoChannelGerman
        self.currentStateAutoSwitch = currentStateAutoSwitch
        self.currentStateAutoTimer = currentStateAutoTimer
        self.currentStateGlobalRadiation = currentStateGlobalRadiation
        self.currentStateSun = currentStateSun
        self.currentStateShadow = currentStateShadow
        self.currentStateSmile = currentStateSmile
        self.currentStateCloud = currentStateCloud
        self.currentStateCoolingSupport = currentStateCoolingSupport
        self.currentStateHeatingSupport = currentStateHeatingSupport
    }
}
