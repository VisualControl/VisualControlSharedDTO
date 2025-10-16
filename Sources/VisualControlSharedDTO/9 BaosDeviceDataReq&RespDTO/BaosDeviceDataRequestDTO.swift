//
//  BaosDeviceDataRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 16.10.25.
//

import Foundation

public struct BaosDeviceDataRequestDTO: Codable, @unchecked Sendable {
    
    public let programmingMode: Bool
    
    public init(programmingMode: Bool)
    {
        self.programmingMode = programmingMode

    }
}
