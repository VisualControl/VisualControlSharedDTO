//
//  BaosDeviceZoneCmdRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.09.26.
//

import Foundation

public struct BaosDeviceZoneCmdResponseDTO: Codable, @unchecked Sendable {
    
    public let baosDeviceValuesId: UUID
    public let productType: ProductType
    public let zoneNameBaos: String
    public let ctrlCmdNumber: Int
    
    public init(baosDeviceValuesId: UUID,
                productType: ProductType,
                zoneNameBaos: String,
                ctrlCmdNumber: Int)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.productType = productType
        self.zoneNameBaos = zoneNameBaos
        self.ctrlCmdNumber = ctrlCmdNumber
    }
    
} // end struct BaosDeviceZoneZoneCmdRequestDTO
