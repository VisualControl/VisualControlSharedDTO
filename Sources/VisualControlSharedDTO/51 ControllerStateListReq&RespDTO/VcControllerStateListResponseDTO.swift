//
//  VcControllerStateListResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 05.01.26.
//

import Foundation

public struct VcControllerStateListResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let controllerStateListName: String
    public let controllerStateDescriptions: [String]
    public let invalidControllerState: String
    public let userInterfaceLanguage: UserInterfaceLanguage
    
    public init(id: UUID,
                controllerStateListName: String,
                controllerStateDescriptions: [String],
                invalidControllerState: String,
                userInterfaceLanguage: UserInterfaceLanguage)
    {
        self.id = id
        self.controllerStateListName = controllerStateListName
        self.controllerStateDescriptions = controllerStateDescriptions
        self.invalidControllerState = invalidControllerState
        self.userInterfaceLanguage = userInterfaceLanguage
    }
}
