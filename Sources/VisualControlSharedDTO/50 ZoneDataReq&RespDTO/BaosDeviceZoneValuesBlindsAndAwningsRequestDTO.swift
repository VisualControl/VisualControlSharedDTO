//
//  BaosDeviceZoneValuesBlindsAndAwningsRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.01.26.
//

import Foundation

public struct BaosDeviceZoneValuesBlindsAndAwningsRequestDTO: Codable, @unchecked Sendable {
    
    public let blindIds: [UUID]
    public let controllerStateListIdsBlinds: [UUID]?
    public let awningIds: [UUID]
    public let controllerStateListIdsAwnings: [UUID]?
    
    public init(blindIds: [UUID],
                controllerStateListIdsBlinds: [UUID]?,
                awningIds: [UUID],
                controllerStateListIdsAwnings: [UUID]?)
    {
        self.blindIds = blindIds
        self.controllerStateListIdsBlinds = controllerStateListIdsBlinds
        self.awningIds = awningIds
        self.controllerStateListIdsAwnings = controllerStateListIdsAwnings
    }
}
