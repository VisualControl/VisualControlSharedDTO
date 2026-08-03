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
        case .dpt06: "DPT06 Int8"
        case .dpt07: "DPT07 UInt16"
        case .dpt08: "DPT08 Int16"
        case .dpt09: "DPT09 Float16"
        case .dpt12: "DPT12 UInt32"
        case .dpt13: "DPT13 Int32"
        case .dpt14: "DPT14 Float32"
        }
    }
    
    public var dptTypeForBaos: String {
        switch self {
        case .dpt01: "DPT-1"
        case .dpt05: "DPT-5"
        case .dpt06: "DPT-6"
        case .dpt07: "DPT-7"
        case .dpt08: "DPT-8"
        case .dpt09: "DPT-9"
        case .dpt12: "DPT-12"
        case .dpt13: "DPT-13"
        case .dpt14: "DPT-14"
        }
    }
    
    public var dptTypeAsInt: Int {
        switch self {
        case .dpt01: 1
        case .dpt05: 5
        case .dpt06: 6
        case .dpt07: 7
        case .dpt08: 8
        case .dpt09: 9
        case .dpt12: 12
        case .dpt13: 13
        case .dpt14: 14
        }
    }
    
    public func checkDptType(for value: String) -> ChartValueDptType? {
        switch value {
        case "DPT-1", "DPT1", "1", "DPT01"  : return .dpt01
        case "DPT-5", "DPT5", "5", "DPT05"  : return .dpt05
        case "DPT-6", "DPT6", "6", "DPT06"  : return .dpt06
        case "DPT-7", "DPT7", "7", "DPT07"  : return .dpt07
        case "DPT-8", "DPT8", "8", "DPT08"  : return .dpt08
        case "DPT-9", "DPT9", "9", "DPT09"  : return .dpt09
        case "DPT-12", "DPT12", "12"        : return .dpt12
        case "DPT-13", "DPT13", "13"        : return .dpt13
        case "DPT-14", "DPT14", "14"        : return .dpt14
        default: return nil
        }
    } // end public func checkDptType
    
    @available(macOS 10.15, *)
    public struct PickerForChartDataType: View {
        
        @Binding public var selectedDptType: ChartValueDptType
        
        public init(selectedDptType: Binding<ChartValueDptType>) {
            self._selectedDptType = selectedDptType
        }
        
        public var body: some View {
            
            Picker("", selection: $selectedDptType) {
                ForEach(ChartValueDptType.allCases) { dptType in
                    Text(dptType.dataTypeDescription).tag(dptType.rawValue)
                }
            }
            .frame(width: 135, alignment: .leading)
            
        } // end public var body: some View
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
