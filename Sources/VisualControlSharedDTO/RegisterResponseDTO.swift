//
//  RegisterResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 28.09.25.
//

import Foundation

public struct RegisterResponseDTO: Codable, @unchecked Sendable {
    
    public let error: Bool
    public var reason: String?
    
    public init(error: Bool, reason: String? = nil) {
        self.error = error
        self.reason = reason
    }
    
}
