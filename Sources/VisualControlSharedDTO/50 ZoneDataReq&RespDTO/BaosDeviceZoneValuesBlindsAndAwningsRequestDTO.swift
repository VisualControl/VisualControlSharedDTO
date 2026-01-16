//
//  BaosDeviceZoneValuesBlindsAndAwningsRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesBlindsAndAwningsRequestDTO: Codable, @unchecked Sendable {
    
    public let BlindsRequestData: [BlindRequestData]
    public let AwningsRequestData: [AwningRequestData]
    
    public struct BlindRequestData: Codable, @unchecked Sendable {
        public let zoneNameBaos: String
        public let baosDeviceValueId_FbStateBld: UUID
        public let baosDeviceValueId_FbPosBld: UUID
        public let baosDeviceValueId_FbAngleBld: UUID
        public let controllerStateListId: UUID?
        
        public init(zoneNameBaos: String,
                    baosDeviceValueId_FbStateBld: UUID,
                    baosDeviceValueId_FbPosBld: UUID,
                    baosDeviceValueId_FbAngleBld: UUID,
                    controllerStateListId: UUID?)
        {
            self.zoneNameBaos = zoneNameBaos
            self.baosDeviceValueId_FbStateBld = baosDeviceValueId_FbStateBld
            self.baosDeviceValueId_FbPosBld = baosDeviceValueId_FbPosBld
            self.baosDeviceValueId_FbAngleBld = baosDeviceValueId_FbAngleBld
            self.controllerStateListId = controllerStateListId
        }
    }
    
    public struct AwningRequestData: Codable, @unchecked Sendable {
        public let zoneNameBaos: String
        public let baosDeviceValueId_FbStateAwg: UUID
        public let baosDeviceValueId_FbPosAwg: UUID
        public let controllerStateListId: UUID?
        
        public init(zoneNameBaos: String,
                    baosDeviceValueId_FbStateAwg: UUID,
                    baosDeviceValueId_FbPosAwg: UUID,
                    controllerStateListId: UUID?)
        {
            self.zoneNameBaos = zoneNameBaos
            self.baosDeviceValueId_FbStateAwg = baosDeviceValueId_FbStateAwg
            self.baosDeviceValueId_FbPosAwg = baosDeviceValueId_FbPosAwg
            self.controllerStateListId = controllerStateListId
        }
    }
    
    public init(blindsRequestData: [BlindRequestData], awningsRequestData: [AwningRequestData]) {
        self.BlindsRequestData = blindsRequestData
        self.AwningsRequestData = awningsRequestData
    }
    
}
