//
//  VcHeaderDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 06.10.25.
//

import Foundation

public struct VcFloorDataRequestDTO: Codable, @unchecked Sendable {
    
    public let floorNameVisu: String
    public let floorNameBaos: String
    public let cleaningButtonsType: Int // Cleaning buttons for each floor (0-none, 1-Blinds, 2-Awnings)
    public let knxMainGroup: Int
    public let authorizedUsers: [String]
    
    public init(floorNameVisu: String,
                floorNameBaos: String,
                cleaningButtonsType: Int,
                knxMainGroup: Int,
                authorizedUsers: [String])
    {
        self.floorNameVisu = floorNameVisu
        self.floorNameBaos = floorNameBaos
        self.cleaningButtonsType = cleaningButtonsType
        self.knxMainGroup = knxMainGroup
        self.authorizedUsers = authorizedUsers
    }
}
