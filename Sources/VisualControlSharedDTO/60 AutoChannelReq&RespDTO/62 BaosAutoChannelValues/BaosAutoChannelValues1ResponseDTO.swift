//
//  BaosAutoChannelValues1ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 30.01.26.
//

import Foundation

public struct BaosAutoChannelValues1ResponseDTO: Codable, @unchecked Sendable {
    
    // GV.AutoParam
    public let baosDeviceValuesId: UUID
    public let limitSun: Int
    public let limitSmile: Int
    public let limitCloud: Int
    public let delaySun: Int
    public let delaySmile: Int
    public let delayCloud: Int
    
    public init(baosDeviceValuesId: UUID,
                limitSun: Int,
                limitSmile: Int,
                limitCloud: Int,
                delaySun: Int,
                delaySmile: Int,
                delayCloud: Int)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.limitSun = limitSun
        self.limitSmile = limitSmile
        self.limitCloud = limitCloud
        self.delaySun = delaySun
        self.delaySmile = delaySmile
        self.delayCloud = delayCloud
    }
    
}
