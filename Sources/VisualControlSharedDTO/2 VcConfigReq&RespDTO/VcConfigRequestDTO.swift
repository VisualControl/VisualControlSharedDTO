//
//  VisualControlConfigRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 29.09.25.
//

import Foundation

public struct VcConfigRequestDTO: Codable, @unchecked Sendable {
    
    public let projectName: String
    public let creatingDate: Date
    public let userIds: [UUID]
    
    public init(projectName: String, creatingDate: Date, userIds: [UUID]) {
        self.projectName = projectName
        self.creatingDate = creatingDate
        self.userIds = userIds
    }
}
