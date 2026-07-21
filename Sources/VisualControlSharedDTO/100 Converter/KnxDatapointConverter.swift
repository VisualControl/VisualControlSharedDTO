//
//  KnxDatapointConverter.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 20.07.26.
//

import Foundation

import Foundation

public enum KnxDptType: String, Codable, CaseIterable, Identifiable {
    
    
    case dpt01 = "DPT01_Boolean"
    case dpt05 = "DPT05_1ByteUnsigned"
    case dpt06 = "DPT06_1ByteSigned"
    case dpt07 = "DPT07_2ByteUnsigned"
    case dpt08 = "DPT08_2ByteSigned"
    case dpt09 = "DPT09_2ByteFloat"
    case dpt10 = "DPT10_3ByteTime"
    case dpt11 = "DPT11_3ByteDate"
    case dpt12 = "DPT12_4ByteUnsigned"
    case dpt13 = "DPT13_4ByteSigned"
    case dpt14 = "DPT14_4ByteFloat"
    
    public var id: KnxDptType { self }
    
    public var descriptionDataType: String {
        switch self {
        case .dpt01: "Bool"
        case .dpt05: "UInt8"
        case .dpt06: "Int8"
        case .dpt07: "UInt16"
        case .dpt08: "Int16"
        case .dpt09: "Float16"
        case .dpt10: "3ByteTime"
        case .dpt11: "3ByteDate"
        case .dpt12: "UInt32"
        case .dpt13: "Int32"
        case .dpt14: "Float32"
        }
    }
    
    
    
}
