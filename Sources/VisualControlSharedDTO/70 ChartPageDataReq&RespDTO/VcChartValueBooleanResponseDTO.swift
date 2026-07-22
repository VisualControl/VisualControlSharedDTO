//
//  VcChartValueDpt01ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueBooleanResponseDTO: Codable, @unchecked Sendable {
    // DPT01 ... Bool
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Bool
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Bool, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt01
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}
