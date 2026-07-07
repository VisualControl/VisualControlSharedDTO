//
//  UserInterfaceLanguage.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 05.01.26.
//

import Foundation

public enum UserInterfaceLanguage: String, Identifiable, Codable, @unchecked Sendable {
    
    public var id: UUID {
        return UUID()
    }

    case english = "English"
    case german = "German"
    
}
