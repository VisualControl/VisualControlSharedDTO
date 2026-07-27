//
//  ChartType.swift
//  VisualControlSharedDTO
//
//  Created by Systemintegration VisualControl on 27.07.26.
//

import Foundation
import SwiftUI

public enum ChartType: String, Codable, CaseIterable, Identifiable {
    
    case currentValue = "Current Value"
    case oneDayDiagram = "1 Day Diagram"
    case sevenDaysDiagram = "7 Days Diagram"
    case thirtyDaysDiagram = "30 Days Diagram"
    
    public var id: ChartType { self }
    
    @available(macOS 10.15, *)
    public struct PickerForChartType: View {
        
        @Binding public var selectedChartType: ChartType
        
        public init(selectedChartType: Binding<ChartType>) {
            self._selectedChartType = selectedChartType
        }
        
        public var body: some View {
            
            Picker("", selection: $selectedChartType) {
                ForEach(ChartType.allCases) { chartType in
                    Text(chartType.rawValue).tag(chartType)
                }
            }
            .frame(width: 150, alignment: .leading)
        }
    } // end struct PickerForChartType: View
    
    
} // end enum ChartType: String, Codable, CaseIterable, Identifiable
