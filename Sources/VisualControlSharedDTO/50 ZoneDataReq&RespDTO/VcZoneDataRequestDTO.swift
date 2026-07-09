//
//  VcZoneDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.10.25.
//

import Foundation

public struct VcZoneDataRequestDTO: Codable, @unchecked Sendable {
    
    public let zoneNameVisu: String
    public let zoneNameBaos: String
    public let productType: ProductType
    public let authorizedUsers: [String]
    public let controllerStateListId: UUID?
    public let baosDeviceId: UUID?
    
    public init(zoneNameVisu: String,
                zoneNameBaos: String,
                productType: ProductType,
                authorizedUsers: [String],
                controllerStateListId: UUID?,
                baosDeviceId: UUID?)
    {
        self.zoneNameVisu = zoneNameVisu
        self.zoneNameBaos = zoneNameBaos
        self.productType = productType
        self.authorizedUsers = authorizedUsers
        self.controllerStateListId = controllerStateListId
        self.baosDeviceId = baosDeviceId
    }
}
