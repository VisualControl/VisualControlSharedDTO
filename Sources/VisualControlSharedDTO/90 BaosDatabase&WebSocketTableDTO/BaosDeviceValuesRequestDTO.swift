//
//  BaosDeviceValuesRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.07.26.
//

import Foundation

public struct BaosDeviceValuesRequestDTO: Codable, @unchecked Sendable {
    
    public let baosDpId: Int
    public let baosDpName: String
    public let zoneNameBaos: String
    public let dptType: String
    
    public init(baosDpId: Int,
                baosDpName: String,
                zoneNameBaos: String,
                dptType: String)
    {
        self.baosDpId = baosDpId
        self.baosDpName = baosDpName
        self.zoneNameBaos = zoneNameBaos
        self.dptType = dptType
    }
}

