//
//  VcChartPageDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 17.07.26.
//

import Foundation

public struct VcChartPageDataRequestDTO: Codable, @unchecked Sendable {
    
    public let sequenceNumber: Int
    public let chartPageNameVisu: String
    public let chartPageNameSidebar: String
    public let authorizedUsers: [String]
    
    public init(sequenceNumber: Int,
                chartPageNameVisu: String,
                chartPageNameSidebar: String,
                authorizedUsers: [String])
    {
        self.sequenceNumber = sequenceNumber
        self.chartPageNameVisu = chartPageNameVisu
        self.chartPageNameSidebar = chartPageNameSidebar
        self.authorizedUsers = authorizedUsers
    }
}

