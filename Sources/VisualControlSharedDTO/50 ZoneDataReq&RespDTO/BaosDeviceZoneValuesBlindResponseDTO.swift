//
//  BaosDeviceZoneValuesBlindResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 15.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesBlindResponseDTO: Codable, @unchecked Sendable {
    
    public let controllerState: Int
    public var controllerStateDescription: String
    public let currentBlindPosition: Int
    public let currentSlatPosition: Int
    
    public init(controllerState: Int, controllerStateDescription: String, currentBlindPosition: Int, currentSlatPosition: Int) {
        self.controllerState = controllerState
        self.controllerStateDescription = controllerStateDescription
        self.currentBlindPosition = currentBlindPosition
        self.currentSlatPosition = currentSlatPosition
    }    
}
