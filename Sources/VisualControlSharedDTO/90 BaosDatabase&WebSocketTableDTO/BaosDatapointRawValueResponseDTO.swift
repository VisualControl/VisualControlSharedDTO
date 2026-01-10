//
//  BaosDatapointRawValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 03.11.25.
//

import Foundation

public struct BaosDatapointRawValueResponseDTO: Codable, @unchecked Sendable {
    
    public let baosDpId: Int
    public let baosDpName: String
    public let rawValue: [Int]
    public let isUpdated: Bool
    public let isValid: Bool
    
    public init(baosDpId: Int, baosDpName: String, rawValue: [Int], isUpdated: Bool, isValid: Bool) {
        self.baosDpId = baosDpId
        self.baosDpName = baosDpName
        self.rawValue = rawValue
        self.isUpdated = isUpdated
        self.isValid = isValid
    }
}
