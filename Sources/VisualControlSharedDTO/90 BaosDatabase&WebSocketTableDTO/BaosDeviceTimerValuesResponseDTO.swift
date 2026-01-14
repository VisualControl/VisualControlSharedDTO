//
//  BaosDeviceTimerValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 14.01.26.
//

import Foundation

public struct BaosDeviceTimerValuesResponseDTO: Codable, @unchecked Sendable {
    
    public let timer1AutoOnOff: Timer1AutoOnOff
    public let timer2AutoOnOff: Timer2AutoOnOff
    public let timer1MovingUpDown: Timer1MovingUpDown
    public let timer2MovingUpDown: Timer2MovingUpDown
    
    
    public struct Timer1AutoOnOff: Codable, @unchecked Sendable {
        public let hourAutoOnTimer1: Int
        public let minutesAutoOnTimer1: Int
        public let moFrAutoTimer1: Bool
        public let saSuAutoTimer1: Bool
        public let hourAutoOffTimer1: Int
        public let minutesAutoOffTimer1: Int
        
        public init(hourAutoOnTimer1: Int, minutesAutoOnTimer1: Int, moFrAutoTimer1: Bool, saSuAutoTimer1: Bool, hourAutoOffTimer1: Int, minutesAutoOffTimer1: Int) {
            self.hourAutoOnTimer1 = hourAutoOnTimer1
            self.minutesAutoOnTimer1 = minutesAutoOnTimer1
            self.moFrAutoTimer1 = moFrAutoTimer1
            self.saSuAutoTimer1 = saSuAutoTimer1
            self.hourAutoOffTimer1 = hourAutoOffTimer1
            self.minutesAutoOffTimer1 = minutesAutoOffTimer1
        }
    }
    
    public struct Timer2AutoOnOff: Codable, @unchecked Sendable {
        public let hourAutoOnTimer2: Int
        public let minutesAutoOnTimer2: Int
        public let moFrAutoTimer2: Bool
        public let saSuAutoTimer2: Bool
        public let hourAutoOffTimer2: Int
        public let minutesAutoOffTimer2: Int
        
        public init(hourAutoOnTimer2: Int, minutesAutoOnTimer2: Int, moFrAutoTimer2: Bool, saSuAutoTimer2: Bool, hourAutoOffTimer2: Int, minutesAutoOffTimer2: Int) {
            self.hourAutoOnTimer2 = hourAutoOnTimer2
            self.minutesAutoOnTimer2 = minutesAutoOnTimer2
            self.moFrAutoTimer2 = moFrAutoTimer2
            self.saSuAutoTimer2 = saSuAutoTimer2
            self.hourAutoOffTimer2 = hourAutoOffTimer2
            self.minutesAutoOffTimer2 = minutesAutoOffTimer2
        }
    }
    
    public struct Timer1MovingUpDown: Codable, @unchecked Sendable {
        public let hourMovingUpTimer1: Int
        public let minutesMovingUpTimer1: Int
        public let moFrMovingTimer1: Bool
        public let saSuMovingTimer1: Bool
        public let hourMovingDownTimer1: Int
        public let minutesMovingDownTimer1: Int
        
        public init(hourMovingUpTimer1: Int, minutesMovingUpTimer1: Int, moFrMovingTimer1: Bool, saSuMovingTimer1: Bool, hourMovingDownTimer1: Int, minutesMovingDownTimer1: Int) {
            self.hourMovingUpTimer1 = hourMovingUpTimer1
            self.minutesMovingUpTimer1 = minutesMovingUpTimer1
            self.moFrMovingTimer1 = moFrMovingTimer1
            self.saSuMovingTimer1 = saSuMovingTimer1
            self.hourMovingDownTimer1 = hourMovingDownTimer1
            self.minutesMovingDownTimer1 = minutesMovingDownTimer1
        }
    }
    
    public struct Timer2MovingUpDown: Codable, @unchecked Sendable {
        public let hourMovingUpTimer2: Int
        public let minutesMovingUpTimer2: Int
        public let moFrMovingTimer2: Bool
        public let saSuMovingTimer2: Bool
        public let hourMovingDownTimer2: Int
        public let minutesMovingDownTimer2: Int
        
        public init(hourMovingUpTimer2: Int, minutesMovingUpTimer2: Int, moFrMovingTimer2: Bool, saSuMovingTimer2: Bool, hourMovingDownTimer2: Int, minutesMovingDownTimer2: Int) {
            self.hourMovingUpTimer2 = hourMovingUpTimer2
            self.minutesMovingUpTimer2 = minutesMovingUpTimer2
            self.moFrMovingTimer2 = moFrMovingTimer2
            self.saSuMovingTimer2 = saSuMovingTimer2
            self.hourMovingDownTimer2 = hourMovingDownTimer2
            self.minutesMovingDownTimer2 = minutesMovingDownTimer2
        }
    }
    
    public init(timer1AutoOnOff: Timer1AutoOnOff,
                timer2AutoOnOff: Timer2AutoOnOff,
                timer1MovingUpDown: Timer1MovingUpDown,
                timer2MovingUpDown: Timer2MovingUpDown)
    {
        self.timer1AutoOnOff = timer1AutoOnOff
        self.timer2AutoOnOff = timer2AutoOnOff
        self.timer1MovingUpDown = timer1MovingUpDown
        self.timer2MovingUpDown = timer2MovingUpDown
    }
}
