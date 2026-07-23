//
//  ChartValueDptType.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 19.07.26.
//

import Foundation
import SwiftUI

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
        case .dpt01: "DPT01 Bool"
        case .dpt05: "DPT05 UInt8"
        case .dpt06: "DPT06Int8"
        case .dpt07: "DPT07 UInt16"
        case .dpt08: "DPT08 Int16"
        case .dpt09: "DPT09Float16"
        case .dpt12: "DPT12 UInt32"
        case .dpt13: "DPT13 Int32"
        case .dpt14: "DPT14 Float32"
        }
    }
    
    @available(macOS 10.15, *)
    public struct PickerForChartDataType: View {
        
        @Binding public var selctedDptType: ChartValueDptType
        
        public var body: some View {
            Picker("", selection: $selctedDptType) {
                Text(dpt01.dataTypeDescription).tag(ChartValueDptType.dpt01)
                Text(dpt05.dataTypeDescription).tag(ChartValueDptType.dpt05)
                Text(dpt06.dataTypeDescription).tag(ChartValueDptType.dpt06)
                Text(dpt07.dataTypeDescription).tag(ChartValueDptType.dpt07)
                Text(dpt08.dataTypeDescription).tag(ChartValueDptType.dpt08)
                Text(dpt09.dataTypeDescription).tag(ChartValueDptType.dpt09)
                Text(dpt12.dataTypeDescription).tag(ChartValueDptType.dpt12)
                Text(dpt13.dataTypeDescription).tag(ChartValueDptType.dpt13)
                Text(dpt14.dataTypeDescription).tag(ChartValueDptType.dpt14)
            }
            .frame(width: 120, alignment: .leading)
        }
    } // end struct PickerForChartData: View
    
    public static func convertToRawValue(_ byteArray: [Int], type: ChartValueDptType) -> Any {
        switch type {
            
        case .dpt01: // Bool
            return byteArray == [1] ? true : false
            
        case .dpt05: // UInt8
            let bytes = generateByteArray(bytes: 1, from: byteArray)
            let value = bytes.withUnsafeBytes { rawPtr -> UInt8 in
                let loaded = rawPtr.load(as: UInt8.self)
                return UInt8(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt06: // Int8
            let bytes = generateByteArray(bytes: 1, from: byteArray)
            let value = bytes.withUnsafeBytes { rawPtr -> Int8 in
                let loaded = rawPtr.load(as: Int8.self)
                return Int8(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt07: // UInt16
            let bytes = generateByteArray(bytes: 2, from: byteArray)
            let value = bytes.withUnsafeBytes { rawPtr -> UInt16 in
                let loaded = rawPtr.load(as: UInt16.self)
                return UInt16(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt08: // Int16
            let bytes = generateByteArray(bytes: 2, from: byteArray)
            let value = bytes.withUnsafeBytes { rawPtr -> Int16 in
                let loaded = rawPtr.load(as: Int16.self)
                return Int16(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt09: // Float16
            let byteArray = generateByteArray(bytes: 2, from: byteArray)
            let byte1 = UInt16(byteArray[0])
            let byte2 = UInt16(byteArray[1])
            let bitWord = byte2 | (byte1 << 8)
            let floatValueIsNegative = bitWord & 32768 == 0 ? false : true
            let bits1To11 = (bitWord & UInt16(2047))
            var mantissa: UInt16 = 0
            if floatValueIsNegative {
                mantissa = (~(bits1To11 - 1) & UInt16(2047))
            }
            else {
                mantissa = bits1To11 & UInt16(2047)
            }
            let exponent = (bitWord & UInt16(30720)) >> 11
            var result = Float32(0.01 * Float(mantissa) * Float(2^exponent))
            if floatValueIsNegative {
                result = -result
            }
            return Float(result)
            
        case .dpt12: // UInt32
            let bytes = generateByteArray(bytes: 4, from: byteArray)
            let value = bytes.withUnsafeBytes { rawPtr -> UInt32 in
                let loaded = rawPtr.load(as: UInt32.self)
                return UInt32(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt13: // Int32
            let bytes = generateByteArray(bytes: 4, from: byteArray)
            let value = bytes.withUnsafeBytes { rawPtr -> Int32 in
                let loaded = rawPtr.load(as: Int32.self)
                return Int32(bigEndian: loaded)
            }
            return Int(value)
            
        case .dpt14: // Float32
            let bytes = generateByteArray(bytes: 4, from: byteArray)
            let bits = bytes.withUnsafeBytes { rawPtr -> UInt32 in
                let loaded = rawPtr.load(as: UInt32.self)
                return UInt32(bigEndian: loaded)
            }
            let float = Float32(bitPattern: bits)
            return Float(float)
            
        }
    }
}

func generateByteArray(bytes: Int, from byteArray: [Int]) -> [UInt8] {
    var modifiedByteArray: [UInt8] = byteArray.map { UInt8($0) }
    if modifiedByteArray.count < bytes {
        while modifiedByteArray.count != bytes {
            modifiedByteArray.insert(0, at: 0)
        }
    }
    return modifiedByteArray
}
