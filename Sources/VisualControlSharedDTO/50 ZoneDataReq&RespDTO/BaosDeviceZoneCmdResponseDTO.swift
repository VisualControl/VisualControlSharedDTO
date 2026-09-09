//
//  BaosDeviceZoneCmdRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.09.26.
//

import Foundation

public struct BaosDeviceZoneCmdResponseDTO: Codable, @unchecked Sendable {
    
    public let baosDeviceValuesId: UUID
    public let productType: String
    public let zoneNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(_ baosDeviceValuesId: UUID,
                _ productType: String,
                _ zoneNameBaos: String,
                _ ctrlCmdNumber: Int)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.productType = productType
        self.zoneNameBaos = zoneNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceZoneZoneCmdRequestDTO
