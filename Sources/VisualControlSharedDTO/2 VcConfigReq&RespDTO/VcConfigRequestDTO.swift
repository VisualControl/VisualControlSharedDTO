//
//  VisualControlConfigRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 29.09.25.
//

import Foundation

public struct VcConfigRequestDTO: Codable, @unchecked Sendable {
    
    public let projectName: String
    public let creatingDate: String
    public let userIds: [String]
    
    public init(projectName: String, creatingDate: String, userIds: [String]) {
        self.projectName = projectName
        self.creatingDate = creatingDate
        self.userIds = userIds
    }
}
