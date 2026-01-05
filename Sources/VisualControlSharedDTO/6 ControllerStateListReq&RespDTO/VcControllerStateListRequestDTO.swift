//
//  VcControllerStateListRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 05.01.26.
//

import Foundation

public struct VcControllerStateListRequestDTO: Codable, @unchecked Sendable {
    
    public let controllerStateListName: String
    public let controllerStateDescription: [String]
    public let invalidControllerState: String
    
    public init(controllerStateListName: String,
                controllerStateDescription: [String],
                invalidControllerState: String)
    {
        self.controllerStateListName = controllerStateListName
        self.controllerStateDescription = controllerStateDescription
        self.invalidControllerState = invalidControllerState
    }
}
