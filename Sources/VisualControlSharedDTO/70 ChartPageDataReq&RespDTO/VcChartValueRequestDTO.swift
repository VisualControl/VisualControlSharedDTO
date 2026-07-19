//
//  VcChartValueRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueRequestDTO: Codable, @unchecked Sendable {
    
    public let chartValueName: String
    public let chartValueDptType: String
    public let timeFrameFrom: Date
    public let timeFrameTo: Date
    
    public init(chartValueName: String,
                chartValueDptType: String,
                timeFrameFrom: Date,
                timeFrameTo: Date)
    {
        self.chartValueName = chartValueName
        self.chartValueDptType = chartValueDptType
        self.timeFrameFrom = timeFrameFrom
        self.timeFrameTo = timeFrameTo
    }
}
