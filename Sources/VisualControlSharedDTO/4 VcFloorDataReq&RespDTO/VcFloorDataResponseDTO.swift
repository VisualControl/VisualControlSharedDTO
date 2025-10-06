//
//  VcFloorDataResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 06.10.25.
//

import Foundation

public struct VcFloorDataResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let sequenceNumber: Int
    public let floorNameVisu: String
    public let floorNameBaos: String
    public let creatingDate: String
    public let cleaningButtonsType: Int // Cleaning buttons for each floor (0-none, 1-Blinds, 2-Awnings)
    public let knxMainGroup: Int
    
    init(id: UUID,
         sequenceNumber: Int,
         floorNameVisu: String,
         floorNameBaos: String,
         creatingDate: String,
         cleaningButtonsType: Int,
         knxMainGroup: Int)
    {
        self.id = id
        self.sequenceNumber = sequenceNumber
        self.floorNameVisu = floorNameVisu
        self.floorNameBaos = floorNameBaos
        self.creatingDate = creatingDate
        self.cleaningButtonsType = cleaningButtonsType
        self.knxMainGroup = knxMainGroup
    }
    
}
