//
//  ProductType.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.10.25.
//

import Foundation

public enum ProductType: String, Identifiable, CaseIterable, Codable, @unchecked Sendable {
    
    public var id: String {
        rawValue
    }
    
    case blind = "Blind"
    case awning = "Awning"
    case light = "Light"
    case wellumicDirect = "Wellumic Direct"
    case wellumicDirIndir = "Wellumic Direct and Indirect"
}
