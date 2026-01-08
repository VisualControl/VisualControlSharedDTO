//
//  VcHeaderValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 08.01.26.
//

import Foundation

public struct VcHeaderValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let currentWindSpeed1: Float
    public let currentWindSpeed2: Float
    public let currentWindSpeed3: Float
    public let currentWindSpeed4: Float
    public let currentWindDirection1: Int
    public let currentWindDirection2: Int
    public let currentWindDirection3: Int
    public let currentWindDirection4: Int
    public let currentBrightness1: Int
    public let currentBrightness2: Int
    public let currentBrightness3: Int
    public let currentBrightness4: Int
    public let currentBrightness5: Int
    public let currentBrightness6: Int
    public let currentBrightness7: Int
    public let currentBrightness8: Int
    public let currentSolarEnergy1: Int
    public let currentSolarEnergy2: Int
    public let currentSolarEnergy3: Int
    public let currentSolarEnergy4: Int
    public let currentSolarEnergy5: Int
    public let currentSolarEnergy6: Int
    public let currentSolarEnergy7: Int
    public let currentSolarEnergy8: Int
    public let currentOutTemp: Float
    public let currentRainState: Bool
    public let currentIceState: Bool
    public let currentHailState: Bool
    public let currentTime: Date
    public let currentDate: Date
    
    public init(currentWindSpeed1: Float,
                currentWindSpeed2: Float,
                currentWindSpeed3: Float,
                currentWindSpeed4: Float,
                currentWindDirection1: Int,
                currentWindDirection2: Int,
                currentWindDirection3: Int,
                currentWindDirection4: Int,
                currentBrightness1: Int,
                currentBrightness2: Int,
                currentBrightness3: Int,
                currentBrightness4: Int,
                currentBrightness5: Int,
                currentBrightness6: Int,
                currentBrightness7: Int,
                currentBrightness8: Int,
                currentSolarEnergy1: Int,
                currentSolarEnergy2: Int,
                currentSolarEnergy3: Int,
                currentSolarEnergy4: Int,
                currentSolarEnergy5: Int,
                currentSolarEnergy6: Int,
                currentSolarEnergy7: Int,
                currentSolarEnergy8: Int,
                currentOutTemp: Float,
                currentRainState: Bool,
                currentIceState: Bool,
                currentHailState: Bool,
                currentTime: Date,
                currentDate: Date)
    {
        self.currentWindSpeed1 = currentWindSpeed1
        self.currentWindSpeed2 = currentWindSpeed2
        self.currentWindSpeed3 = currentWindSpeed3
        self.currentWindSpeed4 = currentWindSpeed4
        self.currentWindDirection1 = currentWindDirection1
        self.currentWindDirection2 = currentWindDirection2
        self.currentWindDirection3 = currentWindDirection3
        self.currentWindDirection4 = currentWindDirection4
        self.currentBrightness1 = currentBrightness1
        self.currentBrightness2 = currentBrightness2
        self.currentBrightness3 = currentBrightness3
        self.currentBrightness4 = currentBrightness4
        self.currentBrightness5 = currentBrightness5
        self.currentBrightness6 = currentBrightness6
        self.currentBrightness7 = currentBrightness7
        self.currentBrightness8 = currentBrightness8
        self.currentSolarEnergy1 = currentSolarEnergy1
        self.currentSolarEnergy2 = currentSolarEnergy2
        self.currentSolarEnergy3 = currentSolarEnergy3
        self.currentSolarEnergy4 = currentSolarEnergy4
        self.currentSolarEnergy5 = currentSolarEnergy5
        self.currentSolarEnergy6 = currentSolarEnergy6
        self.currentSolarEnergy7 = currentSolarEnergy7
        self.currentSolarEnergy8 = currentSolarEnergy8
        self.currentOutTemp = currentOutTemp
        self.currentRainState = currentRainState
        self.currentIceState = currentIceState
        self.currentHailState = currentHailState
        self.currentTime = currentTime
        self.currentDate = currentDate
    }
}
