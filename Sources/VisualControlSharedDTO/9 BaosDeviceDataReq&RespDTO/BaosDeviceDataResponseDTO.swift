//
//  BaosDeviceDataResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.10.25.
//

import Foundation

public struct BaosDeviceDataResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let sequenceNumber: Int
    public let ipAddress: String
    public let deviceNameVc: String
    public let creatingDate: Date
    public let token: String
    public let serialNumber: [Int]
    public let timeSinceReset: Int
    public let busConnectionState: Bool
    public let programmingMode: Bool
    public let indicationSending: Bool
    public let physicalAddressKnx: Int
    public let macAddress: [Int]
    public let deviceFriendlyName: [Int]
    public let maxDatapoints: Int
    public let configuredDatapoints: Int
    public let ipAssignment: Int
    public let subnetMask: [Int]
    public let defaultGateway: [Int]
    public let systemTime: [Int]
    public let systemTimeOffset: Int
    
    public init(id: UUID,
                sequenceNumber: Int,
                ipAddress: String,
                deviceNameVc: String,
                creatingDate: Date,
                token: String,
                serialNumber: [Int],
                timeSinceReset: Int,
                busConnectionState: Bool,
                programmingMode: Bool,
                indicationSending: Bool,
                physicalAddressKnx: Int,
                macAddress: [Int],
                deviceFriendlyName: [Int],
                maxDatapoints: Int,
                configuredDatapoints: Int,
                ipAssignment: Int,
                subnetMask: [Int],
                defaultGateway: [Int],
                systemTime: [Int],
                systemTimeOffset: Int)
    {
        self.id = id
        self.sequenceNumber = sequenceNumber
        self.ipAddress = ipAddress
        self.deviceNameVc = deviceNameVc
        self.creatingDate = creatingDate
        self.token = token
        self.serialNumber = serialNumber
        self.timeSinceReset = timeSinceReset
        self.busConnectionState = busConnectionState
        self.programmingMode = programmingMode
        self.indicationSending = indicationSending
        self.physicalAddressKnx = physicalAddressKnx
        self.macAddress = macAddress
        self.deviceFriendlyName = deviceFriendlyName
        self.maxDatapoints = maxDatapoints
        self.configuredDatapoints = configuredDatapoints
        self.ipAssignment = ipAssignment
        self.subnetMask = subnetMask
        self.defaultGateway = defaultGateway
        self.systemTime = systemTime
        self.systemTimeOffset = systemTimeOffset
    }
}
