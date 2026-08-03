//
//  EnumZoneNameBaosPrefix.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 31.07.26.
//

public enum ZoneNameBaosPrefix: String, Codable, CaseIterable, Identifiable {
    
    public var id: ZoneNameBaosPrefix { self }
    
    case svContrBld = "SV.ContrBld."        // SetValue Controller Blind
    case svContrAwg = "SV.ContrAwg."        // SetValue Controller Awning
    case svContrLgt = "SV.ContrLgt."        // SetValue Controller Light
    case svContrWd = "SV.ContrWD."          // SetValue Controller Wellumic Direct
    case svContrWdi = "SV.ContrWDI."        // SetValue Controller Wellumic Direct & Indirect
    case svLevelLgt = "SV.LevelLgt."        // SetValue Level Light
    case svLevWd_d = "SV.LevWD_d."          // SetValue Level Wellumic Direct direct share
    case svLevWdi_d = "SV.LevWDI_d."        // SetValue Level Wellumic Direct & Indirect direct share
    case svLevWdi_i = "SV.LevWDI_i."        // SetValue Level Wellumic Direct & Indirect indirect share
    case svColWd_d = "SV.ColWD_d."          // SetValue Color Wellumic Direct direct share
    case svColWdi_d = "SV.ColWDI_d."        // Set Value Color Wellumic Direct & Indirect direct share
    case svColWdi_i = "SV.ColWDI_i."        // SetValue Color Wellumic Direct & Indirect indirect share
    case fbStateBld = "FB.StateBld."        // Feedback State Blind (Controller state list number)
    case fbStateAwg = "FB.StateAwg."        // Feedback State Awning (Controller state list number)
    case fbStateLgt = "FB.StateLgt."        // Feedback State Light (Controller state list number)
    case fbStateWd = "FB.StateWD."          // Feedback State Wellumic Direct (Controller state list number)
    case fbStateWdi = "FB.StateWDI."        // Feedback State Wellumic Direct & Indirect (Controller state list number)
    case fbPosBld = "FB.PosBld."            // Feedback Blind Position
    case fbAngleBld = "FB.AngleBld."        // Feedback Blind Angle
    case fbPosAwg = "FB.PosAwg."            // Feedback Awning Position
    case fbLevelLgt = "FB.LevelLgt."        // Feedback Level Light
    case fbLevelWd = "FB.LevelWD."          // Feedback Level Wellumic Direct
    case fbLevelWdi = "FB.LevelWDI."        // Feedback Level Wellumic Direct & Indirect
    case fbLevWdi_i = "FB.LevWDI_i."        // Feedback Level Wellumic Direct & Idirect indirect share
    case fbColorWd = "FB.ColorWD."          // Feedback Color Wellumic Direct
    case fbColWdi_d = "FB.ColWDI_d."        // Feedback Color Wellumic Direct & Idirect direct share
    case fbColWdi_i = "FB.ColWDI_i."        // Feedback Color Wellumic Direct & Idirect indirect share
    case gvDate = "GV.DateReciveFromKNX"    // Get Date from KNX
    case gvTime = "GV.TimeReciveFromKNX"    // Get Time from KNX
    case svDate = "SV.DateReciveFromKNX"    // Set current Date to KNX
    case svTime = "SV.TimeReciveFromKNX"    // Set current Time to KNX
    case svCleanBtns = "SV.CleanBtns."      // Set Value for pressed Cleaning Button
    case scAutoOnOff = "SC.AutoOnOff."      // Switch Command Auto On Off
    case svAutoParam = "SV.AutoParam."      // Set Value for Automatic Parameter
    case gvAutoParam = "GV.AutoParam."      // Get Value for Automatic Parameter
    case svTimer11 = "SV.Timer11."          // Set Value for Automatic Timer 1
    case gvTimer11 = "GV.Timer11."          // Get Value for Automatic Timer 1
    case svTimer12 = "SV.Timer12."          // Set Value for Automatic Timer 2
    case gvTimer12 = "GV.Timer12."          // Get Value for Automatic Timer 2
    case svTimer21 = "SV.Timer21."          // Set Value for Move Command Timer 1
    case gvTimer21 = "GV.Timer21."          // Get Value for Move Command Timer 1
    case svTimer22 = "SV.Timer22."          // Set Value for Move Command Timer 2
    case gvTimer22 = "GV.Timer22."          // Get Value for Move Command Timer 2
    case svTempHeatCool = "SV.Temp/H/C."    // Set Value for Parameters Temperature, Heating ans Cooling
    case gvTempHeatCool = "GV.Temp/H/C."    // Get Value for Parameters Temperature, Heating ans Cooling
    case svWindIceRain = "SV.Wind/I/R."     // Set Value for Parameters Wind, Ice ans Rain
    case gvWindIceRain = "GV.Wind/I/R."     // Get Value for Parameters Wind, Ice ans Rain
    case fbAllStates = "FB.AllStates."      // Feedback on the current status of all automatic functions
    case cv = "CV."                         // ChartValue
    
    
    
    public static func cut(from name: String) -> String {
        if let match = allCases.first(where: { name.hasPrefix($0.rawValue) }) {
            return String(name.dropFirst(match.rawValue.count))
        } else {
            return name
        }
    }
}
