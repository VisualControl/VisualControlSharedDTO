//
//  EnumZoneNameBaosPrefix.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 31.07.26.
//

public enum ZoneNameBaosPrefix: String, Codable, CaseIterable, Identifiable {
    
    public var id: ZoneNameBaosPrefix { self }
    
    case svContrBld = "SV.ContrBld."
    case svContrAwg = "SV.ContrAwg."
    case svContrLgt = "SV.ContrLgt."
    case svContrWd = "SV.ContrWD."
    case svContrWdi = "SV.ContrWDI."
    case svLevWd_d = "SV.LevWD_d."
    case svLevWdi_d = "SV.LevWDI_d."
    case svLevelLgt = "SV.LevelLgt."
    case svColWd_d = "SV.ColWD_d."
    case svColWdi_d = "SV.ColWDI_d."
    case svLevWdi_i = "SV.LevWDI_i."
    case svColWdi_i = "SV.ColWDI_i."
    case fbStateBld = "FB.StateBld."
    case fbStateAwg = "FB.StateAwg."
    case fbStateLgt = "FB.StateLgt."
    case fbStateWd = "FB.StateWD."
    case fbStateWdi = "FB.StateWDI."
    case fbPosBld = "FB.PosBld."
    case fbPosAwg = "FB.PosAwg."
    case fbLevelLgt = "FB.LevelLgt."
    case fbLevelWd = "FB.LevelWD."
    case fbLevelWdi = "FB.LevelWDI."
    case fbAngleBld = "FB.AngleBld."
    case fbColorWd = "FB.ColorWD."
    case fbLevWdi_i = "FB.LevWDI_i."
    case fbColWdi_d = "FB.ColWDI_d."
    case fbColWdi_i = "FB.ColWDI_i."
    
    public static func cut(from name: String) -> String {
        if let match = allCases.first(where: { name.hasPrefix($0.rawValue) }) {
            return String(name.dropFirst(match.rawValue.count))
        } else {
            return name
        }
    }
}
