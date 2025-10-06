//
//  VcFloorDataResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 06.10.25.
//

import Foundation

public struct VcFloorDataResponseDTO: Codable, @unchecked Sendable {
    
    public var id: UUID
    public var sequenceNumber: Int
    public var floorNameVisu: String
    public var floorNameBaos: String
    public var creatingDate: String
    public var cleaningButtonsType: Int // Cleaning buttons for each floor (0-none, 1-Blinds, 2-Awnings)
    public var knxMainGroup: Int
    
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
