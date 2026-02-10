//
//  BaosTimerValuesCollectionResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 10.02.26.
//

import Foundation

public struct BaosTimerValuesCollectionResponseDTO: Codable, @unchecked Sendable {
    
    public let timer11AutoOnOff: TimerValues
    public let timer12AutoOnOff: TimerValues
    public let timer21MovingUpDown: TimerValues
    public let timer22MovingUpDown: TimerValues
    
    public struct TimerValues: Codable, @unchecked Sendable {
        
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
    
    public init(timer11AutoOnOff: TimerValues,
                timer12AutoOnOff: TimerValues,
                timer21MovingUpDown: TimerValues,
                timer22MovingUpDown: TimerValues)
    {
        self.timer11AutoOnOff = timer11AutoOnOff
        self.timer12AutoOnOff = timer12AutoOnOff
        self.timer21MovingUpDown = timer21MovingUpDown
        self.timer22MovingUpDown = timer22MovingUpDown
    }
    
    
}
