//
//  VcChartPageDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 17.07.26.
//

import Foundation

public struct VcChartPageDataRequestDTO: Codable, @unchecked Sendable {
    
    public let visualControlConfigId: UUID
    public let sequenceNumber: Int
    public let chartPageNameVisu: String
    public let chartPageNameSidebar: String
    public let creatingDate: Date
    public let authorizedUsers: [String]
    
    public init(visualControlConfigId: UUID,
                sequenceNumber: Int,
                chartPageNameVisu: String,
                chartPageNameSidebar: String,
                creatingDate: Date,
                authorizedUsers: [String])
    {
        self.visualControlConfigId = visualControlConfigId
        self.sequenceNumber = sequenceNumber
        self.chartPageNameVisu = chartPageNameVisu
        self.chartPageNameSidebar = chartPageNameSidebar
        self.creatingDate = creatingDate
        self.authorizedUsers = authorizedUsers
    }
}

