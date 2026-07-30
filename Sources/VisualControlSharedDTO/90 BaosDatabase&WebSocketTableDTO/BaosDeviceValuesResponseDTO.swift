//
//  BaosDeviceValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.07.26.
//

import Foundation

public struct BaosDeviceValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let baosDpId: Int
    public let baosDpName: String
    public let zoneNameBaos: String
    public let dptType: String
    
    public init(id: UUID,
                baosDpId: Int,
                baosDpName: String,
                zoneNameBaos: String,
                dptType: String)
    {
        self.id = id
        self.baosDpId = baosDpId
        self.baosDpName = baosDpName
        self.zoneNameBaos = zoneNameBaos
        self.dptType = dptType
    }
}
