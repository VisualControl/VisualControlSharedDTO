//
//  VcChartDatasetRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartDatasetRequestDTO: Codable, @unchecked Sendable {
    
    public let chartPageDataId: UUID
    public let chartNameVisu: String
    public let chartNameBaos: String
    public let knxDptType: String
    public let creatingDate: Date
    
    public init(chartPageDataId: UUID,
                chartNameVisu: String,
                chartNameBaos: String,
                knxDptType: String,
                creatingDate: Date)
    {
        self.chartPageDataId = chartPageDataId
        self.chartNameVisu = chartNameVisu
        self.chartNameBaos = chartNameBaos
        self.knxDptType = knxDptType
        self.creatingDate = creatingDate
    }
    
}
