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
    public let chartValueDptType: String
    public let creatingDate: Date
    
    public init(chartNameVisu: String,
                chartNameBaos: String,
                chartValueDptType: String,
                creatingDate: Date)
    {
        self.chartNameVisu = chartNameVisu
        self.chartNameBaos = chartNameBaos
        self.chartValueDptType = chartValueDptType
        self.creatingDate = creatingDate
    }
    
}
