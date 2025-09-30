//
//  AuthorizedUser.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.09.25.
//

import Foundation

public struct AuthorizedUser: Codable, @unchecked Sendable {
    
    public let authUsereName: String
    
    public init(authUsereName: String) {
        self.authUsereName = authUsereName
    }
}
