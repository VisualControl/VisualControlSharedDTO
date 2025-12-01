//
//  BaosWebSocketResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 01.12.25.
//

import Foundation

public struct BaosWebSocketResponseDTO: Codable, @unchecked Sendable {
    
    public let id: Int
    public let type: String
    public let format: String
    public let rawValue: [Int]
    public let isUpdated: Bool
    public let isValid: Bool
    
    public init(id: Int, type: String, format: String, rawValue: [Int], isUpdated: Bool, isValid: Bool) {
        self.id = id
        self.type = type
        self.format = format
        self.rawValue = rawValue
        self.isUpdated = isUpdated
        self.isValid = isValid
    }
    
}
