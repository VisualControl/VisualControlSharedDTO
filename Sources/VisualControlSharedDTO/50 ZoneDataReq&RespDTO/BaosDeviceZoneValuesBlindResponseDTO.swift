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
    public let controllerStateId: UUID?
    public let blindPositionId: UUID?
    public let slatAngleId: UUID?
    
    public init(zoneNameBaos: String,
                currentControllerState: Int,
                controllerStateDescription: String,
                currentBlindPosition: Int,
                currentSlatAngle: Int,
                controllerStateId: UUID?,
                blindPositionId: UUID?,
                slatAngleId: UUID?)
    {
        self.zoneNameBaos = zoneNameBaos
        self.currentControllerState = currentControllerState
        self.controllerStateDescription = controllerStateDescription
        self.currentBlindPosition = currentBlindPosition
        self.currentSlatAngle = currentSlatAngle
        self.controllerStateId = controllerStateId
        self.blindPositionId = blindPositionId
        self.slatAngleId = slatAngleId
    }
}
