//
//  BaosWebSocketResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 01.12.25.
//

import Foundation

public struct BaosWebSocketResponseDTO: Codable, @unchecked Sendable {
    
    public let baosIpAddress: String
    public let dpId: Int
    public let format: String
    public let rawValue: [Int]
    public let isUpdated: Bool
    public let isValid: Bool
    
    public init(baosIpAddress: String, dpId: Int, format: String, rawValue: [Int], isUpdated: Bool, isValid: Bool) {
        self.baosIpAddress = baosIpAddress
        self.dpId = dpId
        self.format = format
        self.rawValue = rawValue
        self.isUpdated = isUpdated
        self.isValid = isValid
    }
    
}
