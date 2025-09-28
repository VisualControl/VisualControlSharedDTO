//
//  LoginResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 28.09.25.
//

import Foundation

public struct LoginResponseDTO: Codable, @unchecked Sendable {
    
    public let error: Bool
    public var reason: String?
    public var token: String?
    public var userId: UUID?
    
    public init(error: Bool, reason: String? = nil, token: String? = nil, userId: UUID? = nil) {
        self.error = error
        self.reason = reason
        self.token = token
        self.userId = userId
    }
    
}
