//
//  ChartHelper.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import Foundation

struct ChartHelper {
    static func parseSelectedData(from data: [DateValueChartData], in selectedDate: Date?) -> DateValueChartData? {
        guard let selected = selectedDate else { return nil }
        return data.first {
            Calendar.current.isDate($0.date, equalTo: selected, toGranularity: .year)
        }
    }
}
