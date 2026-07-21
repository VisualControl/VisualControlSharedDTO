//
//  ChartValueDptType.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 19.07.26.
//

import Foundation

public enum ChartValueDptType: String, Codable, CaseIterable, Identifiable {
    
    case dpt01 = "DPT01"
    case dpt05 = "DPT05"
    case dpt06 = "DPT06"
    case dpt07 = "DPT07"
    case dpt08 = "DPT08"
    case dpt09 = "DPT09"
    case dpt12 = "DPT12"
    case dpt13 = "DPT13"
    case dpt14 = "DPT14"
    
    public var id: ChartValueDptType { self }
    
    public var dataTypeDescription: String {
        switch self {
        case .dpt01: "Bool"
        case .dpt05: "UInt8"
        case .dpt06: "Int8"
        case .dpt07: "UInt16"
        case .dpt08: "Int16"
        case .dpt09: "Float16"
        case .dpt12: "UInt32"
        case .dpt13: "Int32"
        case .dpt14: "Float32"
        }
    }
    
    public static func convertToRawValue(_ array: [UInt8], type: ChartValueDptType) -> Any {
        switch type {
            
        case .dpt01: // Bool
            return array == [1] ? true : false
            
        case .dpt05: // UInt8
            let value = array.withUnsafeBytes { rawPtr -> UInt8 in
                let loaded = rawPtr.load(as: UInt8.self)
                return UInt8(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt06: // Int8
            let value = array.withUnsafeBytes { rawPtr -> Int8 in
                let loaded = rawPtr.load(as: Int8.self)
                return Int8(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt07: // UInt16
            let bytes = generateByteArray(bytes: 2, from: array)
            let value = bytes.withUnsafeBytes { rawPtr -> UInt16 in
                let loaded = rawPtr.load(as: UInt16.self)
                return UInt16(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt08: // Int16
            let bytes = generateByteArray(bytes: 2, from: array)
            let value = bytes.withUnsafeBytes { rawPtr -> Int16 in
                let loaded = rawPtr.load(as: Int16.self)
                return Int16(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt09: // Float16
            let bytes = generateByteArray(bytes: 2, from: array)
            let bits = bytes.withUnsafeBytes { rawPtr -> UInt16 in
                let loaded = rawPtr.load(as: UInt16.self)
                return UInt16(bigEndian: loaded)
            }
            var float: Float = 0
            if #available(macOS 11.0, *) {
                float = Float(Float16(bitPattern: bits))
            }
            return Float(float)
            
        case .dpt12: // UInt32
            let bytes = generateByteArray(bytes: 4, from: array)
            let value = bytes.withUnsafeBytes { rawPtr -> UInt32 in
                let loaded = rawPtr.load(as: UInt32.self)
                return UInt32(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt13: // Int32
            let bytes = generateByteArray(bytes: 4, from: array)
            let value = bytes.withUnsafeBytes { rawPtr -> Int32 in
                let loaded = rawPtr.load(as: Int32.self)
                return Int32(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt14: // Float32
            let bytes = generateByteArray(bytes: 4, from: array)
            let bits = bytes.withUnsafeBytes { rawPtr -> UInt32 in
                let loaded = rawPtr.load(as: UInt32.self)
                return UInt32(bigEndian: loaded)
            }
            let float = Float32(bitPattern: bits)
            return Float(float)
            
        }
    }
}

func generateByteArray(bytes: Int, from byteArray: [UInt8]) -> [UInt8] {
    var modifiedByteArray: [UInt8] = byteArray
    if modifiedByteArray.count < bytes {
        while modifiedByteArray.count != bytes {
            modifiedByteArray.insert(0, at: 0)
        }
    }
    return modifiedByteArray
}
