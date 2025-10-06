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
    public let authorizedUsers: [String]
    
    public init(projectName: String, creatingDate: Date, authorizedUsers: [String]) {
        self.projectName = projectName
        self.creatingDate = creatingDate
        self.authorizedUsers = authorizedUsers
    }
}
