//
//  BaosDeviceZoneValuesBlindsAndAwningsRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesBlindsAndAwningsRequestDTO: Codable, @unchecked Sendable {
    
    public let blindIds: [UUID]
    public let awningIds: [UUID]
    
    public init(blindIds: [UUID], awningIds: [UUID]) {
        self.blindIds = blindIds
        self.awningIds = awningIds
    }
}
