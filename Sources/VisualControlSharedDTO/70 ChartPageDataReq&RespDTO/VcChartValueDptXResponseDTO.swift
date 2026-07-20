//
//  VcChartValueDpt01ResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 18.07.26.
//

import Foundation

public struct VcChartValueDpt01ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Bool
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Bool, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt05ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Int32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt06ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Int32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt07ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Int32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt08ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Int32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt09ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Float32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Float32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt12ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Int32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt13ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Int32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Int32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}

public struct VcChartValueDpt14ResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let storedValue: Float32
    public let storageTime: Date
    
    public init(id: UUID, storedValue: Float32, storageTime: Date) {
        self.id = id
        self.storedValue = storedValue
        self.storageTime = storageTime
    }
}
