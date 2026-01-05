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
    public var controllerStateListId: UUID?
    public var productBlindId: UUID?
    public var productAwningId: UUID?
    public var productLightId: UUID?
    public var productWellumicDirectId: UUID?
    public var productWellumicDirIndirId: UUID?
    
    public init(id: UUID,
                sequenceNumber: Int,
                zoneNameVisu: String,
                zoneNameBaos: String,
                creatingDate: Date,
                productType: ProductType,
                authorizedUsers: [String],
                controllerStateListId: UUID? = nil,
                productBlindId: UUID? = nil,
                productAwningId: UUID? = nil,
                productLightId: UUID? = nil,
                productWellumicDirectId: UUID? = nil,
                productWellumicDirIndirId: UUID? = nil)
    {
        self.id = id
        self.sequenceNumber = sequenceNumber
        self.zoneNameVisu = zoneNameVisu
        self.zoneNameBaos = zoneNameBaos
        self.creatingDate = creatingDate
        self.productType = productType
        self.authorizedUsers = authorizedUsers
        self.controllerStateListId = controllerStateListId
        self.productBlindId = productBlindId
        self.productAwningId = productAwningId
        self.productLightId = productLightId
        self.productWellumicDirectId = productWellumicDirectId
        self.productWellumicDirIndirId = productWellumicDirIndirId
    }
}
