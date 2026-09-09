//
//  BaosDeviceZoneCmdRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.09.26.
//

import Foundation

public struct BaosDeviceZoneCmdRequestDTO: Codable, @unchecked Sendable {
    
    public let zoneNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(zoneNameBaos: String, ctrlCmdNumber: Int)
    {
        self.zoneNameBaos = zoneNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceZoneZoneCmdRequestDTO
