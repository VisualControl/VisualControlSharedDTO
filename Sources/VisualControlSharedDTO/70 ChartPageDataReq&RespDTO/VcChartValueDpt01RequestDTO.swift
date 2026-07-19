//
//  VcChartValueDpt01RequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueDpt01RequestDTO: Codable, @unchecked Sendable {
    
    public let chartValueName: String
    public let timeFrameFrom: Date
    public let timeFrameTo: Date
    
    public init(chartValueName: String,
                timeFrameFrom: Date,
                timeFrameTo: Date)
    {
        self.chartValueName = chartValueName
        self.timeFrameFrom = timeFrameFrom
        self.timeFrameTo = timeFrameTo
    }
}
