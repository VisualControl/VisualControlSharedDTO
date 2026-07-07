//
//  UserInterfaceLanguage.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 05.01.26.
//

import Foundation

public enum UserInterfaceLanguage: String, Identifiable, CaseIterable, Codable, @unchecked Sendable {
    
    public var id: String {
        rawValue
    }

    case english = "English"
    case german = "German"
    
}
