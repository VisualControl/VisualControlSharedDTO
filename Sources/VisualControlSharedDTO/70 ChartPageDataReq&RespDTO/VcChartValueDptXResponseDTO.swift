//
//  VcChartValueDpt01ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueDpt01ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Bool
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Bool, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}
