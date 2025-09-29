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
    public let creatingDate: String
    public let userIds: [String]
    public let headerData: [VcHeaderDataResponseDTO]
    
    public init(id: UUID,
                projectName: String,
                creatingDate: String,
                userIds: [String],
                headerData: [VcHeaderDataResponseDTO] = [])
    {
        self.id = id
        self.projectName = projectName
        self.creatingDate = creatingDate
        self.userIds = userIds
        self.headerData = headerData
    }
}
