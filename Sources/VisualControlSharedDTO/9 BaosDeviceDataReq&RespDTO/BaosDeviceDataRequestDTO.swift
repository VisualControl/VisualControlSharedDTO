//
//  BaosDeviceDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.10.25.
//

import Foundation

public struct BaosDeviceDataRequestDTO: Codable, @unchecked Sendable {
    
    public let sequenceNumber: Int
    public let ipAddress: String
    public let deviceNameVc: String
    public let username: String
    public let password: String
    
    public init(sequenceNumber: Int,
                ipAddress: String,
                deviceNameVc: String,
                username: String,
                password: String)
    {
        self.sequenceNumber = sequenceNumber
        self.ipAddress = ipAddress
        self.deviceNameVc = deviceNameVc
        self.username = username
        self.password = password
    }
    
}
