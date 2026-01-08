//
//  VcHeaderValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 08.01.26.
//

import Foundation

public struct VcHeaderValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let currentWindSpeed1to4: [Float]
    public let currentWindDirection1to4: [Int]
    public let currentBrightness1to8: [Int]
    public let currentSolarEnergy1to8: [Int]
    public let currentOutTemp: Float
    public let currentRainState: Bool
    public let currentIceState: Bool
    public let currentHailState: Bool
    public let currentTime: Date
    public let currentDate: Date
    
    public init(currentWindSpeed1to4: [Float],
                currentWindDirection1to4: [Int],
                currentBrightness1to8: [Int],
                currentSolarEnergy1to8: [Int],
                currentOutTemp: Float,
                currentRainState: Bool,
                currentIceState: Bool,
                currentHailState: Bool,
                currentTime: Date,
                currentDate: Date)
    {
        self.currentWindSpeed1to4 = currentWindSpeed1to4
        self.currentWindDirection1to4 = currentWindDirection1to4
        self.currentBrightness1to8 = currentBrightness1to8
        self.currentSolarEnergy1to8 = currentSolarEnergy1to8
        self.currentOutTemp = currentOutTemp
        self.currentRainState = currentRainState
        self.currentIceState = currentIceState
        self.currentHailState = currentHailState
        self.currentTime = currentTime
        self.currentDate = currentDate
    }
    
}
