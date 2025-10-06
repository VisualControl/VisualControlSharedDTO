//
//  VisualControlConfigRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 29.09.25.
//

import Foundation

public struct VcConfigRequestDTO: Codable, @unchecked Sendable {
    
    public let projectName: String
    public let authorizedUsers: [String]
    
    public init(projectName: String, authorizedUsers: [String]) {
        self.projectName = projectName
        self.authorizedUsers = authorizedUsers
    }
}
