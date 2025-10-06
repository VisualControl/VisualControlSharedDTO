//
//  VisualControlConfigResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 29.09.25.
//

import Foundation

public struct VcConfigResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let projectName: String
    public let creatingDate: Date
    public let authorizedUsers: [String]
    
    public init(id: UUID,
                projectName: String,
                creatingDate: Date,
                authorizedUsers: [String])
    {
        self.id = id
        self.projectName = projectName
        self.creatingDate = creatingDate
        self.authorizedUsers = authorizedUsers
    }
}
