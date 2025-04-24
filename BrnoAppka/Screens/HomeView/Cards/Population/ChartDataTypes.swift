//
//  ChartDataTypes.swift
//  BrnoAppka
//
//  Created by Timotej  Maguľak  on 22/04/2025.
//

import Foundation

struct DateValueChartData: Identifiable {
    let id = UUID()
    let date: Date
    let value: Int
}

extension Array where Element == Int {
    var average: Double {
        guard !isEmpty else { return 0 }
        return Double(reduce(0, +)) / Double(count)
    }
}
