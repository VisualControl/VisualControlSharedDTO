//
//  BaosDeviceZoneValuesBlindResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 15.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesBlindResponseDTO: Codable, @unchecked Sendable {
    
    public let zoneNameBaos: String
    public let currentControllerState: Int
    public var controllerStateDescription: String
    public let currentBlindPosition: Int
    public let currentSlatAngle: Int
    
    public init(zoneNameBaos: String,
                currentControllerState: Int,
                controllerStateDescription: String,
                currentBlindPosition: Int,
                currentSlatAngle: Int)
    {
        self.zoneNameBaos = zoneNameBaos
        self.currentControllerState = currentControllerState
        self.controllerStateDescription = controllerStateDescription
        self.currentBlindPosition = currentBlindPosition
        self.currentSlatAngle = currentSlatAngle
    }
}
