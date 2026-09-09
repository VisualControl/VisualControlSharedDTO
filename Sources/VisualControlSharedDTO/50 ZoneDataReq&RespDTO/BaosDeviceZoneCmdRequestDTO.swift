//
//  BaosDeviceZoneCmdRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.09.26.
//

import Foundation

public struct BaosDeviceZoneCmdRequestDTO: Codable, @unchecked Sendable {
    
    public let productType: String
    public let zoneNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(_ productType: String,
                _ zoneNameBaos: String,
                _ ctrlCmdNumber: Int)
    {
        self.productType = productType
        self.zoneNameBaos = zoneNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceZoneZoneCmdRequestDTO
