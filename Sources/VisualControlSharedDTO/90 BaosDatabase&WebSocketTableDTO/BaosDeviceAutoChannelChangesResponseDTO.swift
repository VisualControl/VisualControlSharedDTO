//
//  BaosDeviceAutoChannelChangesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 11.01.26.
//

import Foundation

public struct BaosDeviceAutoChannelChangesResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let timeStamp: Date
    public let autoChannelParameterType: AutoChannelParameterType
    public let oldValue: String
    public let newValue: String
    
    public init(id: UUID, timeStamp: Date, autoChannelParameterType: AutoChannelParameterType, oldValue: String, newValue: String) {
        self.id = id
        self.timeStamp = timeStamp
        self.autoChannelParameterType = autoChannelParameterType
        self.oldValue = oldValue
        self.newValue = newValue
    }
    
    
}
