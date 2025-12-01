//
//  BaosDeviceValuesResponseDTO.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 01.12.25.
//

import Foundation

public struct BaosDeviceValueDatabaseDTO: Codable, @unchecked Sendable {
    
    public let id: UUID
    public let baosDeviceDataId: UUID
    public let baosDpId: Int
    public let baosDpName: String
    public let zoneNameBaos: String
    public let dptType: Int
    public let dpRawValue: [Int]
    public let communicationFlag: Bool
    public let readFlag: Bool
    public let readOnInitFlag: Bool
    public let transmitFlag: Bool
    public let updateFlag: Bool
    public let writeFlag: Bool
    public let isUpdate: Bool
    public let isValid: Bool
    
    public init(id: UUID,
                baosDeviceDataId: UUID,
                baosDpId: Int,
                baosDpName: String,
                zoneNameBaos: String,
                dptType: Int,
                dpRawValue: [Int],
                communicationFlag: Bool,
                readFlag: Bool,
                readOnInitFlag: Bool,
                transmitFlag: Bool,
                updateFlag: Bool,
                writeFlag: Bool,
                isUpdate: Bool,
                isValid: Bool)
    {
        self.id = id
        self.baosDeviceDataId = baosDeviceDataId
        self.baosDpId = baosDpId
        self.baosDpName = baosDpName
        self.zoneNameBaos = zoneNameBaos
        self.dptType = dptType
        self.dpRawValue = dpRawValue
        self.communicationFlag = communicationFlag
        self.readFlag = readFlag
        self.readOnInitFlag = readOnInitFlag
        self.transmitFlag = transmitFlag
        self.updateFlag = updateFlag
        self.writeFlag = writeFlag
        self.isUpdate = isUpdate
        self.isValid = isValid
    }
}
