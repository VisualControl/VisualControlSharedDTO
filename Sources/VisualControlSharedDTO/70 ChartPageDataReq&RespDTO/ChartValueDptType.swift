//
//  ChartValueDptType.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 19.07.26.
//

import Foundation

enum ChartValueDptType: String, Codable, CaseIterable, Identifiable {
    
    case dpt01 = "DPT01"
    case dpt05 = "DPT05"
    case dpt06 = "DPT06"
    case dpt07 = "DPT07"
    case dpt08 = "DPT08"
    case dpt09 = "DPT09"
    case dpt12 = "DPT12"
    case dpt13 = "DPT13"
    case dpt14 = "DPT14"
    
    var id: ChartValueDptType { self }
    
    var descriptionDataType: String {
        
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
}
