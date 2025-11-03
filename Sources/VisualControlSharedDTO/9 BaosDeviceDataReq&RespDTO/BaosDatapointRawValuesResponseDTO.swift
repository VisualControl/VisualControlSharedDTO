//
//  BaosDatapointRawValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 03.11.25.
//

import Foundation

public struct BaosDatapointRawValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let baosDpId: Int
    public let baosDpName: String
    public let rawValue: [Int]
    
    init(baosDpId: Int, baosDpName: String, rawValue: [Int]) {
        self.baosDpId = baosDpId
        self.baosDpName = baosDpName
        self.rawValue = rawValue
    }
}
