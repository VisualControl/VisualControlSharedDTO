//
//  VisualControlConfigRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 29.09.25.
//

import Foundation

public struct VcConfigRequestDTO: Codable, @unchecked Sendable {
    
    public let projectName: String
    public let imageName: String
    public let authorizedUsers: [String]
    
    public init(projectName: String, imageName: String, authorizedUsers: [String]) {
        self.projectName = projectName
        self.imageName = imageName
        self.authorizedUsers = authorizedUsers
    }
}
