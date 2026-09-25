//
//  BaosDeviceFloorCmdResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.09.26.
//

import Foundation

public struct BaosDeviceFloorCmdResponseDTO: Codable, @unchecked Sendable {
    
    public let baosDeviceValuesId: UUID
    public let productType: String
    public let floorNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(_ baosDeviceValuesId: UUID,
                _ productType: String,
                _ floorNameBaos: String,
                _ ctrlCmdNumber: Int)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.productType = productType
        self.floorNameBaos = floorNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceFloorCmdRequestDTO
