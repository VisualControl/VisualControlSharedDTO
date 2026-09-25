//
//  BaosDeviceFloorCmdRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 25.09.26.
//

import Foundation

public struct BaosDeviceFloorCmdRequestDTO: Codable, @unchecked Sendable {
    
    public let productType: String
    public let floorNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(_ productType: String,
                _ floorNameBaos: String,
                _ ctrlCmdNumber: Int)
    {
        self.productType = productType
        self.floorNameBaos = floorNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceZoneZoneCmdRequestDTO
