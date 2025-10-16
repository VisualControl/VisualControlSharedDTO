//
//  BaosDeviceDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.10.25.
//

import Foundation

public struct BaosDeviceDataRequestDTO: Codable, @unchecked Sendable {
    
    public let ipAddress: String
    public let deviceNameVc: String
    public let programmingMode: Bool
    public let systemTime: String
    public let systemTimeOffset: Int
    
    public init(ipAddress: String,
                deviceNameVc: String,
                programmingMode: Bool,
                systemTime: String,
                systemTimeOffset: Int)
    {
        self.ipAddress = ipAddress
        self.deviceNameVc = deviceNameVc
        self.programmingMode = programmingMode
        self.systemTime = systemTime
        self.systemTimeOffset = systemTimeOffset
    }
}
