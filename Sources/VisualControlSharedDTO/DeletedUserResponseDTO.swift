//
//  DeletedUserResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 28.09.25.
//

import Foundation

public struct DeletedUserDTO: Codable, @unchecked Sendable {
    
    public let error: Bool
    public var reason: String?
    public var userId: UUID?
    public var username: String?
    
    public init(error: Bool, reason: String? = nil, userId: UUID? = nil, username: String? = nil) {
        self.error = error
        self.reason = reason
        self.userId = userId
        self.username = username
    }
    
}
