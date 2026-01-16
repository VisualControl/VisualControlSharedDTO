//
//  BaosDeviceZoneValuesBlindsAndAwningsResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesBlindsAndAwningsResponseDTO: Codable, @unchecked Sendable {
    
    public let blindsResponseDTO: [BaosDeviceZoneValuesBlindResponseDTO]
    public let awningsResponseDTO: [BaosDeviceZoneValuesAwningResponseDTO]
    
    public init(blindsResponseDTO: [BaosDeviceZoneValuesBlindResponseDTO],
                awningsResponseDTO: [BaosDeviceZoneValuesAwningResponseDTO]) {
        self.blindsResponseDTO = blindsResponseDTO
        self.awningsResponseDTO = awningsResponseDTO
    }
}
