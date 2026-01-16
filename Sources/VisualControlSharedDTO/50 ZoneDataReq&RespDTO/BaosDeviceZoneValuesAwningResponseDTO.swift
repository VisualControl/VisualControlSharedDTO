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
    public let currentAwningLength: Int
    public let controllerStateId: UUID?
    public let awningLengthId: UUID?
    
    public init(zoneNameBaos: String,
                currentControllerState: Int,
                controllerStateDescription: String,
                currentAwningLength: Int,
                controllerStateId: UUID?,
                awningLengthId: UUID?)
    {
        self.zoneNameBaos = zoneNameBaos
        self.currentControllerState = currentControllerState
        self.controllerStateDescription = controllerStateDescription
        self.currentAwningLength = currentAwningLength
        self.controllerStateId = controllerStateId
        self.awningLengthId = awningLengthId
    }
    
}
