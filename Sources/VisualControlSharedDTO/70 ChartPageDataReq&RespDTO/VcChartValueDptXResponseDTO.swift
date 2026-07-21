//
//  VcChartValueDpt01ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueDpt01ResponseDTO: Codable, @unchecked Sendable {
    // DPT01 ... Bool
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Bool
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Bool, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt01
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt05ResponseDTO: Codable, @unchecked Sendable {
    // DPT05 ... UInt8
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt05
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt06ResponseDTO: Codable, @unchecked Sendable {
    // DPT06 ... Int8
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt06
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt07ResponseDTO: Codable, @unchecked Sendable {
    // DPT07 ... UInt16
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt07
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt08ResponseDTO: Codable, @unchecked Sendable {
    // DPT08 ... Int16
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt08
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt09ResponseDTO: Codable, @unchecked Sendable {
    // DPT09 ... Float16
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Float
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Float, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt09
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt12ResponseDTO: Codable, @unchecked Sendable {
    // DPT12 ... UInt32
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt12
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt13ResponseDTO: Codable, @unchecked Sendable {
    // DPT13 ... Int32
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Int
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt13
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt14ResponseDTO: Codable, @unchecked Sendable {
    // DPT14 ... Float32
    public let id: UUID
    public let chartValueDptType: ChartValueDptType
    public let storedValue: Float
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Float, storageTime: Date) {
        self.id = id
        self.chartValueDptType = .dpt14
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}
