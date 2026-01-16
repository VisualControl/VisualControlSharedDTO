//
//  BaosDeviceZoneValuesAwningResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 15.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesAwningResponseDTO: Codable, @unchecked Sendable {
    
    public let zoneNameBaos: String
    public let currentControllerState: Int
    public var controllerStateDescription: String
    public let currentAwningPosition: Int
    public let controllerStateId: UUID?
    public let awningPositionId: UUID?
    
    public init(zoneNameBaos: String,
                currentControllerState: Int,
                controllerStateDescription: String,
                currentAwningPosition: Int,
                controllerStateId: UUID?,
                awningPositionId: UUID?)
    {
        self.zoneNameBaos = zoneNameBaos
        self.currentControllerState = currentControllerState
        self.controllerStateDescription = controllerStateDescription
        self.currentAwningPosition = currentAwningPosition
        self.controllerStateId = controllerStateId
        self.awningPositionId = awningPositionId
    }
    
}
