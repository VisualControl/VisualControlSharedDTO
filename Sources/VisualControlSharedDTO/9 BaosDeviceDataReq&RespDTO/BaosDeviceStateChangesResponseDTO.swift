//
//  BaosDeviceStateChangesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 07.01.26.
//

import Foundation

public struct BaosDeviceStateChangesResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let timeStamp: Date
    public let stateDescription: String
    public let stateNumber: Int
    
    public init(id: UUID, timeStamp: Date, stateDescription: String, stateNumber: Int) {
        self.id = id
        self.timeStamp = timeStamp
        self.stateDescription = stateDescription
        self.stateNumber = stateNumber
    }
    
    
}
