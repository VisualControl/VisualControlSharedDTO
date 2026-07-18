//
//  VcChartDatasetRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartDatasetRequestDTO: Codable, @unchecked Sendable {
    
    public let chartNameVisu: String
    public let chartNameBaos: String
    public let knxDptType: String
    public let creatingDate: Date
    
    public init(chartNameVisu: String,
                chartNameBaos: String,
                knxDptType: String,
                creatingDate: Date)
    {
        self.chartNameVisu = chartNameVisu
        self.chartNameBaos = chartNameBaos
        self.knxDptType = knxDptType
        self.creatingDate = creatingDate
    }
    
}
