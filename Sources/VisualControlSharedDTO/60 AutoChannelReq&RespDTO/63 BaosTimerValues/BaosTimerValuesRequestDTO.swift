//
//  BaosTimerValuesRequestDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 06.02.26.
//

import Foundation

public struct BaosTimerValuesRequestDTO: Codable, @unchecked Sendable {
    
    // SV.TimerXY._
    public let hourLeftSide: Int
    public let minutesLeftSide: Int
    public let mondayUntilFriday: Bool
    public let saturdayAndSunday: Bool
    public let hourRightSide: Int
    public let minutesRightSide: Int
    
    public init(hourLeftSide: Int,
                minutesLeftSide: Int,
                mondayUntilFriday: Bool,
                saturdayAndSunday: Bool,
                hourRightSide: Int,
                minutesRightSide: Int)
    {
        self.hourLeftSide = hourLeftSide
        self.minutesLeftSide = minutesLeftSide
        self.mondayUntilFriday = mondayUntilFriday
        self.saturdayAndSunday = saturdayAndSunday
        self.hourRightSide = hourRightSide
        self.minutesRightSide = minutesRightSide
    }
}
