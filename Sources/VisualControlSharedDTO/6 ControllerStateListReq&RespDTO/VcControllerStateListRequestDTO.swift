//
//  VcControllerStateListRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 05.01.26.
//

import Foundation

public struct VcControllerStateListRequestDTO: Codable, @unchecked Sendable {
    
    public let controllerStateListName: String
    public let controllerStateDescriptions: [String]
    public let invalidControllerState: String
    public let userInterfaceLanguage: UserInterfaceLanguage
    
    public init(controllerStateListName: String,
                controllerStateDescriptions: [String],
                invalidControllerState: String,
                userInterfaceLanguage: UserInterfaceLanguage)
    {
        self.controllerStateListName = controllerStateListName
        self.controllerStateDescriptions = controllerStateDescriptions
        self.invalidControllerState = invalidControllerState
        self.userInterfaceLanguage = userInterfaceLanguage
    }
}
