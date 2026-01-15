//
//  BaosDeviceZoneValuesAwningResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 15.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesAwningResponseDTO: Codable, @unchecked Sendable {
    
    public let controllerState: Int
    public var controllerStateDescription: String
    public let currentAwningPosition: Int
    
    public init(controllerState: Int, controllerStateDescription: String, currentAwningPosition: Int) {
        self.controllerState = controllerState
        self.controllerStateDescription = controllerStateDescription
        self.currentAwningPosition = currentAwningPosition
    }
}
