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
    public let sequenceNumber: Int
    public let imageName: String
    public let creatingDate: Date
    public let authorizedUsers: [String]
    public let userInterfaceLanguage: UserInterfaceLanguage
    
    public init(id: UUID,
                projectName: String,
                sequenceNumber: Int,
                imageName: String,
                creatingDate: Date,
                authorizedUsers: [String],
                userInterfaceLanguage: UserInterfaceLanguage)
    {
        self.id = id
        self.projectName = projectName
        self.sequenceNumber = sequenceNumber
        self.imageName = imageName
        self.creatingDate = creatingDate
        self.authorizedUsers = authorizedUsers
        self.userInterfaceLanguage = userInterfaceLanguage
    }
}
