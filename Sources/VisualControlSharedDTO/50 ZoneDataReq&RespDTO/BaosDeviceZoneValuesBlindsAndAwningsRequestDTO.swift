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
        public let blindId: UUID
        public let controllerStateListId: UUID?
        
        public init(zoneNameBaos: String, blindId: UUID, controllerStateListId: UUID?) {
            self.zoneNameBaos = zoneNameBaos
            self.blindId = blindId
            self.controllerStateListId = controllerStateListId
        }
    }
    
    public struct AwningRequestData: Codable, @unchecked Sendable {
        public let zoneNameBaos: String
        public let awningId: UUID
        public let controllerStateListId: UUID?
        
        public init(zoneNameBaos: String, awningId: UUID, controllerStateListId: UUID?) {
            self.zoneNameBaos = zoneNameBaos
            self.awningId = awningId
            self.controllerStateListId = controllerStateListId
        }
    }
    
    public init(blindsRequestData: [BlindRequestData], awningsRequestData: [AwningRequestData]) {
        self.BlindsRequestData = blindsRequestData
        self.AwningsRequestData = awningsRequestData
    }
    
}
