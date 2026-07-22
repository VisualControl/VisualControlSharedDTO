//
//  VcChartValueDpt01ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueFloatResponseDTO: Codable, @unchecked Sendable {
    // DPT09, DPT14
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Float
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Float, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt01
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}
