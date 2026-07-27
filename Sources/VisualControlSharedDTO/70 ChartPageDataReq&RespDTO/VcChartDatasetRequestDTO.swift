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
    public let chartType: String
    
    public init(chartNameVisu: String,
                chartNameBaos: String,
                chartValueDptType: String,
                chartType: String)
    {
        self.chartNameVisu = chartNameVisu
        self.chartNameBaos = chartNameBaos
        self.chartValueDptType = chartValueDptType
        self.chartType = chartType
    }
    
}
