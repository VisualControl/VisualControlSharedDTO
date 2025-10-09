//
//  VcZoneDataResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.10.25.
//

import Foundation

public struct VcZoneDataResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let sequenceNumber: Int
    public let zoneNameVisu: String
    public let zoneNameBaos: String
    public let creatingDate: Date
    public let productType: ProductType
    public let authorizedUsers: [String]
    
    public init(id: UUID,
                sequenceNumber: Int,
                zoneNameVisu: String,
                zoneNameBaos: String,
                creatingDate: Date,
                productType: ProductType,
                authorizedUsers: [String])
    {
        self.id = id
        self.sequenceNumber = sequenceNumber
        self.zoneNameVisu = zoneNameVisu
        self.zoneNameBaos = zoneNameBaos
        self.creatingDate = creatingDate
        self.productType = productType
        self.authorizedUsers = authorizedUsers
    }
}
