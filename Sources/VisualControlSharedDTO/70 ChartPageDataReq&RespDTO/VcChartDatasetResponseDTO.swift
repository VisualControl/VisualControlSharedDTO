//
//  VcChartDatasetResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartDatasetResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let chartNameVisu: String
    public let chartNameBaos: String
    public let chartValueDptType: String
    public let creatingDate: Date
    
    public init(id: UUID,
                chartNameVisu: String,
                chartNameBaos: String,
                chartValueDptType: String,
                creatingDate: Date)
    {
        self.id = id
        self.chartNameVisu = chartNameVisu
        self.chartNameBaos = chartNameBaos
        self.chartValueDptType = chartValueDptType
        self.creatingDate = creatingDate
    }
}
