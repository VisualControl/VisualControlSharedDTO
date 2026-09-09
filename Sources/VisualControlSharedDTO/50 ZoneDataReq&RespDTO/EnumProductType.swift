//
//  EnumProductType.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 09.10.25.
//

import Foundation

public enum ProductType: String, Identifiable, CaseIterable, Codable, @unchecked Sendable {
    
    public var id: String {
        rawValue
    }
    
    case blind = "Blind"
    case awning = "Awning"
    case light = "Light"
    case wellumicDirect = "Wellumic Direct"
    case wellumicDirIndir = "Wellumic Direct and Indirect"
    
    public var baosPrefixContrState: String {
        
        switch self {
        case .blind: "FB.StateBld."
        case .awning: "FB.StateAwg."
        case .light: "FB.StateLgt."
        case .wellumicDirect: "FB.StateWD."
        case .wellumicDirIndir: "FB.StateWDI."
        }
    } // end var baosPrefixContrState
    
    public var baosPrefixContrCmd: String {
        
        switch self {
        case .blind: "SV.ContrBld."
        case .awning: "SV.ContrAwg."
        case .light: "SV.ContrLgt."
        case .wellumicDirect: "SV.ContrWD."
        case .wellumicDirIndir: "SV.ContrWDI."
        }
    } // end var baosPrefixContrState
    
    
}
