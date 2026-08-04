//
//  VcChartValueDpt01ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueIntegerResponseDTO: Codable, @unchecked Sendable {
    // DPT05, DPT06, DPT07, DPT08, DPT12, DPT13
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date, dptType: ChartValueDptType) {
        self.id = id
        self.chartValueDptType = dptType
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}
