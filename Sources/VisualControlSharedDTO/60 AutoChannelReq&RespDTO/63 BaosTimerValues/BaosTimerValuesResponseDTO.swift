//
//  BaosTimerValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 06.02.26.
//

import Foundation

public struct BaosTimerValuesResponseDTO: Codable, @unchecked Sendable {
    
    // GV.TimerXY._
    public let baosDeviceValuesId: UUID
    public let autoChannelNameBaos: String
    public let hourLeftSide: Int
    public let minutesLeftSide: Int
    public let mondayUntilFriday: Bool
    public let saturdayAndSunday: Bool
    public let hourRightSide: Int
    public let minutesRightSide: Int
    
    public init(baosDeviceValuesId: UUID,
                autoChannelNameBaos: String,
                hourLeftSide: Int,
                minutesLeftSide: Int,
                mondayUntilFriday: Bool,
                saturdayAndSunday: Bool,
                hourRightSide: Int,
                minutesRightSide: Int)
    {
        self.baosDeviceValuesId = baosDeviceValuesId
        self.autoChannelNameBaos = autoChannelNameBaos
        self.hourLeftSide = hourLeftSide
        self.minutesLeftSide = minutesLeftSide
        self.mondayUntilFriday = mondayUntilFriday
        self.saturdayAndSunday = saturdayAndSunday
        self.hourRightSide = hourRightSide
        self.minutesRightSide = minutesRightSide
    }
}
