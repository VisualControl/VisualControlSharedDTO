//
//  VcHeaderValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 08.01.26.
//

import Foundation

public struct VcHeaderValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let currentWindSpeed1To4: [Float]
    public let currentWindDirection1To4: [Int]
    public let currentBrightness1To8: [Int]
    public let currentSolarEnergy1To8: [Int]
    public let currentOutTemp: Float
    public let currentRainState: Bool
    public let currentIceState: Bool
    public let currentHailState: Bool
    public let currentTime: Date
    public let currentDate: Date
    
    public init(currentWindSpeed1To4: [Float],
                currentWindDirection1To4: [Int],
                currentBrightness1To8: [Int],
                currentSolarEnergy1To8: [Int],
                currentOutTemp: Float,
                currentRainState: Bool,
                currentIceState: Bool,
                currentHailState: Bool,
                currentTime: Date,
                currentDate: Date)
    {
        self.currentWindSpeed1To4 = currentWindSpeed1To4
        self.currentWindDirection1To4 = currentWindDirection1To4
        self.currentBrightness1To8 = currentBrightness1To8
        self.currentSolarEnergy1To8 = currentSolarEnergy1To8
        self.currentOutTemp = currentOutTemp
        self.currentRainState = currentRainState
        self.currentIceState = currentIceState
        self.currentHailState = currentHailState
        self.currentTime = currentTime
        self.currentDate = currentDate
    }
    
}
