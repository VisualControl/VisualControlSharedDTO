//
//  RegisterResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 28.09.25.
//

import Foundation

public struct RegisterResponseDTO: Codable, @unchecked Sendable {
    
    public let error: Bool
    public let reason: String?
    public let id: UUID?
    public let username: String?
    
    public init(error: Bool, reason: String? = nil, id: UUID? = nil, username: String? = nil) {
        self.error = error
        self.reason = reason
        self.id = id
        self.username = username
    }
    
}
