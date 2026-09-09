//
//  BaosDeviceZoneCmdRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.09.26.
//

import Foundation

public struct BaosDeviceZoneCmdResponseDTO: Codable, @unchecked Sendable {
    
    public let baosDeviceValuesId: UUID
    public let zoneNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(baosDeviceValuesId: UUID, zoneNameBaos: String, ctrlCmdNumber: Int)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.zoneNameBaos = zoneNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceZoneZoneCmdRequestDTO
