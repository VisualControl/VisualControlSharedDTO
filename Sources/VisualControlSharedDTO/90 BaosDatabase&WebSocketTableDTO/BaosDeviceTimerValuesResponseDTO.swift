//
//  BaosDeviceTimerValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 14.01.26.
//

import Foundation

public struct BaosDeviceTimerValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let Timer11AutoOnOff: Timer1AutoOnOff
    public let Timer12AutoOnOff: Timer2AutoOnOff
    public let Timer21MovingUpDown: Timer1MovingUpDown
    public let Timer22MovingUpDown: Timer2MovingUpDown
    
    
    public struct Timer1AutoOnOff: Codable, @unchecked Sendable {
        public let hourAutoOn: Int
        public let minutesAutoOn: Int
        public let moFrAuto: Bool
        public let saSuAuto: Bool
        public let hourAutoOff: Int
        public let minutesAutoOff: Int
        
        public init(hourAutoOnTimer1: Int, minutesAutoOnTimer1: Int, moFrAutoTimer1: Bool, saSuAutoTimer1: Bool, hourAutoOffTimer1: Int, minutesAutoOffTimer1: Int) {
            self.hourAutoOn = hourAutoOnTimer1
            self.minutesAutoOn = minutesAutoOnTimer1
            self.moFrAuto = moFrAutoTimer1
            self.saSuAuto = saSuAutoTimer1
            self.hourAutoOff = hourAutoOffTimer1
            self.minutesAutoOff = minutesAutoOffTimer1
        }
    }
    
    public struct Timer2AutoOnOff: Codable, @unchecked Sendable {
        public let hourAutoOn: Int
        public let minutesAutoOn: Int
        public let moFrAuto: Bool
        public let saSuAuto: Bool
        public let hourAutoOff: Int
        public let minutesAutoOff: Int
        
        public init(hourAutoOnTimer2: Int, minutesAutoOnTimer2: Int, moFrAutoTimer2: Bool, saSuAutoTimer2: Bool, hourAutoOffTimer2: Int, minutesAutoOffTimer2: Int) {
            self.hourAutoOn = hourAutoOnTimer2
            self.minutesAutoOn = minutesAutoOnTimer2
            self.moFrAuto = moFrAutoTimer2
            self.saSuAuto = saSuAutoTimer2
            self.hourAutoOff = hourAutoOffTimer2
            self.minutesAutoOff = minutesAutoOffTimer2
        }
    }
    
    public struct Timer1MovingUpDown: Codable, @unchecked Sendable {
        public let hourMovingUp: Int
        public let minutesMovingUp: Int
        public let moFrMoving: Bool
        public let saSuMoving: Bool
        public let hourMovingDown: Int
        public let minutesMovingDown: Int
        
        public init(hourMovingUpTimer1: Int, minutesMovingUpTimer1: Int, moFrMovingTimer1: Bool, saSuMovingTimer1: Bool, hourMovingDownTimer1: Int, minutesMovingDownTimer1: Int) {
            self.hourMovingUp = hourMovingUpTimer1
            self.minutesMovingUp = minutesMovingUpTimer1
            self.moFrMoving = moFrMovingTimer1
            self.saSuMoving = saSuMovingTimer1
            self.hourMovingDown = hourMovingDownTimer1
            self.minutesMovingDown = minutesMovingDownTimer1
        }
    }
    
    public struct Timer2MovingUpDown: Codable, @unchecked Sendable {
        public let hourMovingUp: Int
        public let minutesMovingUp: Int
        public let moFrMoving: Bool
        public let saSuMoving: Bool
        public let hourMovingDown: Int
        public let minutesMovingDown: Int
        
        public init(hourMovingUpTimer2: Int, minutesMovingUpTimer2: Int, moFrMovingTimer2: Bool, saSuMovingTimer2: Bool, hourMovingDownTimer2: Int, minutesMovingDownTimer2: Int) {
            self.hourMovingUp = hourMovingUpTimer2
            self.minutesMovingUp = minutesMovingUpTimer2
            self.moFrMoving = moFrMovingTimer2
            self.saSuMoving = saSuMovingTimer2
            self.hourMovingDown = hourMovingDownTimer2
            self.minutesMovingDown = minutesMovingDownTimer2
        }
    }
    
    public init(timer1AutoOnOff: Timer1AutoOnOff,
                timer2AutoOnOff: Timer2AutoOnOff,
                timer1MovingUpDown: Timer1MovingUpDown,
                timer2MovingUpDown: Timer2MovingUpDown)
    {
        self.Timer11AutoOnOff = timer1AutoOnOff
        self.Timer12AutoOnOff = timer2AutoOnOff
        self.Timer21MovingUpDown = timer1MovingUpDown
        self.Timer22MovingUpDown = timer2MovingUpDown
    }
}
