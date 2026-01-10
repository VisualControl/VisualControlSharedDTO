//
//  BaosDatapointDescriptionResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 03.11.25.
//

import Foundation

public struct BaosDatapointDescriptionResponseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let baosDpId: Int
    public let baosDpName: String
    public let dptType: Int
    public let communicationFlag: Bool
    public let readFlag: Bool
    public let readOnInitFlag: Bool
    public let transmitFlag: Bool
    public let updateFlag: Bool
    public let writeFlag: Bool
    public let isUpdate: Bool
    public let isValid: Bool
    public let dpRawValue: [Int]
    
    public init(id: UUID,
                baosDpId: Int,
                baosDpName: String,
                dptType: Int,
                communicationFlag: Bool,
                readFlag: Bool,
                readOnInitFlag: Bool,
                transmitFlag: Bool,
                updateFlag: Bool,
                writeFlag: Bool,
                isUpdate: Bool,
                isValid: Bool,
                dpRawValue: [Int] = [])
    {
        self.id = id
        self.baosDpId = baosDpId
        self.baosDpName = baosDpName
        self.dptType = dptType
        self.communicationFlag = communicationFlag
        self.readFlag = readFlag
        self.readOnInitFlag = readOnInitFlag
        self.transmitFlag = transmitFlag
        self.updateFlag = updateFlag
        self.writeFlag = writeFlag
        self.isUpdate = isUpdate
        self.isValid = isValid
        self.dpRawValue = dpRawValue
    }
}
